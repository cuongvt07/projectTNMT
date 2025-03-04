<?php

namespace App\Http\Controllers\frontend;

use App\Enums\Constant;
use App\Http\Controllers\Controller;
use App\Helpers\SeoHelper;
use App\Models\UserModel;
use Illuminate\Http\Request;
use App\Models\ProductModel;
use App\Models\CategoryModel;
use App\Models\BrandModel;
use App\Models\ImageModel;
use App\Models\CommentModel;
use App\Models\OrderModel;
use App\Models\OrderdetailModel;
use App\Models\PostModel;
use App\Models\SlideModel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Session;
use Illuminate\Support\Str;
use App\Models\ToppingModel;

class PageController extends Controller
{
    //
    public function __construct(){
        $priceMax = ProductModel::max('product_price_sell');
        $priceMin = ProductModel::min('product_price_sell');
        $dataCategory = CategoryModel::all();
        $dataBrand = BrandModel::all();
        $dataLogo = SlideModel::where('type', 3)->first();
        $dataLogoFooter = SlideModel::where('type', 4)->first();
        $countCart = OrderModel::where('user_id', Auth::id())->where('order_status', 1)
                ->join('orderdetail', 'orders.order_id', '=', 'orderdetail.order_id')
                ->count('orderdetail.order_detail_id');
        $dataLogo = SlideModel::where('type', 3)->first();
        $dataLogoFooter = SlideModel::where('type', 4)->first();

        view()->share([
            'dataCategory' => $dataCategory,
            'dataBrand' => $dataBrand,
            'priceMax' => $priceMax,
            'priceMin' => $priceMin,
            'dataLogo' => $dataLogo,
            'dataLogoFooter' => $dataLogoFooter,
            'priceMinFilter' => $priceMin+2000000,
            'priceMaxFilter' => $priceMax-2000000,
            'countCart' => $countCart ?? 0,
            'dataLogo' => $dataLogo,
            'dataLogoFooter' => $dataLogoFooter,
        ]);
    }

    public function index(){
        $dataProductNews = ProductModel::orderBy('product_id', 'DESC')->limit(Constant::NUMBER_PRODUCT)->get();
        $dataProductSales = ProductModel::orderBy('product_sale', 'DESC')->limit(Constant::NUMBER_PRODUCT)->get();
        $dataProductSell = ProductModel::whereIn('product_id', 
                        OrderdetailModel::select('product_id')
                                        ->groupBy('product_id')
                                        ->limit(Constant::NUMBER_PRODUCT)
                                        ->pluck('product_id') )
                        ->get();
        $dataComment = CommentModel::where('comment_status', 3)->limit(4)->get();
        $dataSilde = SlideModel::where('active', 1)->where('type', 1)->orderBy('id', 'DESC')->limit(Constant::NUMBER_PRODUCT)->get();
        $dataBanner = SlideModel::where('active', 1)->where('type', 2)->orderBy('id', 'DESC')->get();
        $dataPost = PostModel::orderBy('id', 'DESC')->limit(4)->get();
        $dataTopping = ToppingModel::all();

        return view('frontend.pages.home',[
            'dataProductNews' => $dataProductNews,
            'dataProductSales' => $dataProductSales,
            'dataProductSell' => $dataProductSell,
            'dataComment' => $dataComment,
            'dataSilde' => $dataSilde,
            'dataBanner' => $dataBanner,
            'dataPost' => $dataPost,
            'dataTopping' => $dataTopping,
        ]);
    }

    public function shop(){
        $dataProductSales = ProductModel::orderBy('product_sale', 'DESC')->limit(Constant::NUMBER_PRODUCT)->get();

        if($this->checkFilter()){
            $price_start = $_GET['price_start'];
            $price_end = $_GET['price_end'];
            $data = ProductModel::whereBetween('product_price_sell', [$price_start, $price_end])->orderBy('product_id', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($this->checkSort()){
            $sortBy = $_GET['sort_by'];
            $data = $this->sortByShop($sortBy);
        }
        else if($this->checkSearch()){
            $keyword = $_GET['search_keyword'];
            $data = ProductModel::where('product_name', 'LIKE', '%'.$keyword.'%')->paginate(Constant::NUMBER_PRODUCT);
        }
        else{
            $data = ProductModel::orderBy('product_id', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
        return view('frontend.pages.shop',[
            'data' => $data,
            'dataProductSales' => $dataProductSales,
        ]);
    }

    public function product($id){
        $pos = strpos($id, "-");
        $id = substr($id, 0, $pos); // Cắt lấy id trước dấu "-"
    
        // Lấy thông tin sản phẩm
        $data = ProductModel::find($id);
        
        // Lấy sản phẩm cùng danh mục (không bao gồm sản phẩm hiện tại)
        $dataProductCategory = ProductModel::where('product_id', '!=', $id)
            ->where('category_id', $data->category_id)
            ->orderBy('product_sale', 'DESC')
            ->limit(Constant::NUMBER_PRODUCT)
            ->get();
        
        // Lấy hình ảnh sản phẩm
        $dataProductImages = ImageModel::where('product_id', $id)->get();
        
        // Lấy bình luận
        $dataComment = CommentModel::where('product_id', $id)
            ->orderBy('comment_id', 'DESC')
            ->limit(3)
            ->get();
        
        // Kiểm tra xem người dùng đã mua sản phẩm để được phép bình luận
        $checkCmt = false;
        $dataOrder = OrderModel::where('user_id', Auth::id())->get();
        foreach($dataOrder as $order){
            $dataOrderDetail = OrderdetailModel::where('order_id', $order->order_id)->get();
            foreach($dataOrderDetail as $detail){
                if($detail->product_id == $id){
                    $checkCmt = true;
                }
            }
        }
    
        // Lấy thông tin topping liên quan đến sản phẩm
        $dataToppings = ToppingModel::get(); // Điều chỉnh truy vấn theo cấu trúc bảng của bạn
    
        return view('frontend.pages.product', [
            'data' => $data,
            'dataProductCategory' => $dataProductCategory,
            'dataProductImages' => $dataProductImages,
            'dataComment' => $dataComment,
            'data_seo_image' => $data->product_image,
            'checkCmt' => $checkCmt,
            'dataToppings' => $dataToppings, // Truyền dữ liệu topping sang view
        ]);
    }

    public function contact(){
        return view('frontend.pages.contact');
    }

    public function blog()
    {
        $data = PostModel::orderBy('id', 'DESC')->paginate(12);

        return view('frontend.pages.blog', [
            'data' => $data,
        ]);
    }

    public function viewBlog($id)
    {
        $pos = strpos($id, "-");
        $id = substr($id, 0, $pos);//Cắt lấy id theo cái - đầu

        $data = PostModel::find($id);
        $dataBlog = PostModel::where('id', '!=', $id)->orderBy('id', 'DESC')->limit(4)->get();

        return view('frontend.pages.post', [
            'data' => $data,
            'dataBlog' => $dataBlog,
        ]);
    }

    public function checkFilter(){
        if(isset($_GET['price_start']) && isset($_GET['price_end'])){
            return true;
        }
    }

    public function checkSort(){
        if(isset($_GET['sort_by'])){
            return true;
        }
    }

    public function checkSearch(){
        if(isset($_GET['search_keyword'])){
            return true;
        }
    }

    public function sortByShop($sortBy){
        if($sortBy == 'tang_dan'){
            return $data = ProductModel::orderBy('product_price_sell', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'giam_dan'){
            return $data = ProductModel::orderBy('product_price_sell', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'kitu_az'){
            return $data = ProductModel::orderBy('product_name', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else {
            return $data = ProductModel::orderBy('product_name', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
    }

    public function sortByCategory($sortBy, $id){
        if($sortBy == 'tang_dan'){
            return $data = ProductModel::where('category_id', $id)->orderBy('product_price_sell', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'giam_dan'){
            return $data = ProductModel::where('category_id', $id)->orderBy('product_price_sell', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'kitu_az'){
            return $data = ProductModel::where('category_id', $id)->orderBy('product_name', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else {
            return $data = ProductModel::where('category_id', $id)->orderBy('product_name', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
    }

    public function sortByBrand($sortBy, $id){
        if($sortBy == 'tang_dan'){
            return $data = ProductModel::where('brand_id', $id)->orderBy('product_price_sell', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'giam_dan'){
            return $data = ProductModel::where('brand_id', $id)->orderBy('product_price_sell', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else if($sortBy == 'kitu_az'){
            return $data = ProductModel::where('brand_id', $id)->orderBy('product_name', 'ASC')->paginate(Constant::NUMBER_PRODUCT);
        }
        else {
            return $data = ProductModel::where('brand_id', $id)->orderBy('product_name', 'DESC')->paginate(Constant::NUMBER_PRODUCT);
        }
    }
}
