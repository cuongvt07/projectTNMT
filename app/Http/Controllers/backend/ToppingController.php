<?php

namespace App\Http\Controllers\backend;

use App\Enums\Constant;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Topping\ToppingRequest;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\ToppingModel;
use mysql_xdevapi\Exception;

class ToppingController extends Controller
{

    public function __construct(){
        $active = "active";
        view()->share('activeTopping', $active);
    }

    public function index()
    {
        $data = ToppingModel::orderBy('Topping_id', 'DESC')->paginate(Constant::PER_PAGE);

        return view('backend.toppings.list', ['data' => $data]);
    }

    public function create()
    {
        return view('backend.toppings.add');
    }

    public function store(ToppingRequest $request)
    {
        $data = new ToppingModel();

        $data->topping_name = $request->topping_name;
        $data->price = $request->price;

        if($data->save()){
            return redirect('admin/toppings')->with('msgSuccess', 'Thêm topping Thành Công');
        }
        else{
            return redirect('admin/toppings/create')->with('msgSuccess', 'Thêm topping Thất Bại');
        }
    }

    public function edit($id)
    {
        //
        $data = ToppingModel::find($id);

        return view('backend.toppings.update', ['data' => $data]);
    }

    public function update(ToppingRequest $request, $id)
    {
        $data = ToppingModel::find($id);
        $data->topping_name = $request->topping_name;
        $data->price = $request->price;

        if($data->save()){
            return redirect('admin/toppings')->with('msgSuccess', 'Cập nhật topping Thành Công');
        }
        else{
            return redirect()->back()->with('msgSuccess', 'Cập nhật topping Thất Bại');
        }
    }

    public function delete($id)
    {
        $data = ToppingModel::find($id);

        if($data->delete()){
            return response()->json(['msgSuccess'=>'Xóa topping thành công']);
        }
        else{
            return response()->json(['msgError'=>'Xóa topping thất bại']);
        }
    }
}
