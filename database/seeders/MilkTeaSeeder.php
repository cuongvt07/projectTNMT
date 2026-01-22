<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;

class MilkTeaSeeder extends Seeder
{
    public function run()
    {
        // Tắt kiểm tra khóa ngoại để truncate
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('products')->truncate();
        DB::table('categorys')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // 1. Tạo Categories (dữ liệu từ SQL)
        $categoriesData = [
            [1, 'Trà Sữa', 'tra-sua', 'Hương vị trà sữa đậm đà, kết hợp hoàn hảo giữa trà và sữa.'],
            [2, 'Trà Trái Cây', 'tra-trai-cay', 'Tươi mát, giải nhiệt với các loại trái cây nhiệt đới.'],
            [3, 'Macchiato', 'macchiato', 'Lớp kem cheese béo ngậy phủ trên nền trà thơm.'],
            [4, 'Sữa Chua', 'sua-chua', 'Sữa chua dẻo mịn kết hợp topping đa dạng.'],
            [5, 'Cà Phê', 'ca-phe', 'Đậm đà hương vị cà phê Việt Nam và Ý.'],
            [6, 'Đá Xay', 'da-xay', 'Mát lạnh sảng khoái với các món đá xay.'],
        ];

        foreach ($categoriesData as $cat) {
            DB::table('categorys')->insert([
                'category_id' => $cat[0],
                'category_name' => $cat[1],
                'category_keyword' => $cat[2],
                'category_description' => $cat[3],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }

        // 2. Danh sách sản phẩm (dữ liệu từ SQL)
        $products = [
            [1, 'Trà Sữa Truyền Thống', 1, 'default_product.png', 15000, 30000, 100, 0, '', 'Hương vị trà đen Earl Grey kết hợp sữa béo ngậy, món best seller của quán.', 'tra sua truyen thong', 'Hương vị trà đen Earl Grey kết hợp sữa béo ngậy, món best seller của quán.'],
            [2, 'Trà Sữa Trân Châu Đường Đen', 1, 'default_product.png', 20000, 45000, 100, 0, '', 'Đường đen nướng chảy thơm lừng trân châu dai dai, kết hợp sữa tươi thanh trùng.', 'tra sua tran chau duong den', 'Đường đen nướng chảy thơm lừng trân châu dai dai, kết hợp sữa tươi thanh trùng.'],
            [3, 'Trà Sữa Oolong Lài', 1, 'default_product.png', 18000, 35000, 100, 0, '', 'Vị trà Oolong đậm đà thoang thoảng hương hoa lài.', 'tra sua oolong lai', 'Vị trà Oolong đậm đà thoang thoảng hương hoa lài.'],
            [4, 'Trà Sữa Thái Xanh', 1, 'default_product.png', 15000, 32000, 100, 0, '', 'Chuẩn vị Thái Lan, thơm mùi thảo mộc và màu xanh bắt mắt.', 'tra sua thai xanh', 'Chuẩn vị Thái Lan, thơm mùi thảo mộc và màu xanh bắt mắt.'],
            [5, 'Trà Sữa Thái Đỏ', 1, 'default_product.png', 15000, 32000, 100, 0, '', 'Hương vị trà Thái đậm đà, màu cam đỏ đặc trưng.', 'tra sua thai do', 'Hương vị trà Thái đậm đà, màu cam đỏ đặc trưng.'],
            [6, 'Trà Sữa Khoai Môn', 1, 'default_product.png', 16000, 38000, 100, 0, '', 'Vị khoai môn bùi bùi, béo ngậy, màu tím mộng mơ.', 'tra sua khoai mon', 'Vị khoai môn bùi bùi, béo ngậy, màu tím mộng mơ.'],
            [7, 'Trà Sữa Socola', 1, 'default_product.png', 16000, 38000, 100, 0, '', 'Đậm đà vị Cacao nguyên chất, dành cho team mê chocolate.', 'tra sua socola', 'Đậm đà vị Cacao nguyên chất, dành cho team mê chocolate.'],
            [8, 'Trà Sữa Hokkaido', 1, 'default_product.png', 19000, 42000, 100, 0, '', 'Hương vị caramel ngọt ngào đặc trưng của vùng Hokkaido.', 'tra sua hokkaido', 'Hương vị caramel ngọt ngào đặc trưng của vùng Hokkaido.'],
            [9, 'Trà Đào Cam Sả', 2, 'default_product.png', 20000, 45000, 100, 0, '', 'Miếng đào giòn tan, vị cam tươi và hương sả nồng nàn.', 'tra dao cam sa', 'Miếng đào giòn tan, vị cam tươi và hương sả nồng nàn.'],
            [10, 'Trà Vải Hoa Hồng', 2, 'default_product.png', 22000, 48000, 100, 0, '', 'Sự kết hợp tinh tế giữa quả vải mọng nước và hương hoa hồng dịu nhẹ.', 'tra vai hoa hong', 'Sự kết hợp tinh tế giữa quả vải mọng nước và hương hoa hồng dịu nhẹ.'],
            [11, 'Lục Trà Dâu Tây', 2, 'default_product.png', 25000, 50000, 100, 0, '', 'Dâu tây tươi xay nhuyễn kết hợp lục trà thơm mát.', 'luc tra dau tay', 'Dâu tây tươi xay nhuyễn kết hợp lục trà thơm mát.'],
            [12, 'Trà Xoài Nhiệt Đới', 2, 'default_product.png', 23000, 48000, 100, 0, '', 'Vị xoài cát Chu chín ngọt, mang đậm hương vị mùa hè.', 'tra xoai nhiet doi', 'Vị xoài cát Chu chín ngọt, mang đậm hương vị mùa hè.'],
            [13, 'Trà Chanh Leo Kim Quất', 2, 'default_product.png', 18000, 40000, 100, 0, '', 'Chua chua ngọt ngọt, cực kỳ giải khát.', 'tra chanh leo kim quat', 'Chua chua ngọt ngọt, cực kỳ giải khát.'],
            [14, 'Trà Bưởi Hồng Mật Ong', 2, 'default_product.png', 24000, 52000, 100, 0, '', 'Bưởi hồng da xanh mọng nước cùng mật ong rừng ngọt dịu.', 'tra buoi hong mat ong', 'Bưởi hồng da xanh mọng nước cùng mật ong rừng ngọt dịu.'],
            [15, 'Hồng Trà Macchiato', 3, 'default_product.png', 18000, 38000, 100, 0, '', 'Hồng trà chát nhẹ quyện cùng kem cheese mặn mặn béo béo.', 'hong tra macchiato', 'Hồng trà chát nhẹ quyện cùng kem cheese mặn mặn béo béo.'],
            [16, 'Lục Trà Macchiato', 3, 'default_product.png', 18000, 38000, 100, 0, '', 'Lục trà hoa nhài thơm ngát và lớp foam sữa dày.', 'luc tra macchiato', 'Lục trà hoa nhài thơm ngát và lớp foam sữa dày.'],
            [17, 'Matcha Macchiato', 3, 'default_product.png', 22000, 45000, 100, 0, '', 'Bột Matcha Nhật Bản và kem cheese, combo hoàn hảo.', 'matcha macchiato', 'Bột Matcha Nhật Bản và kem cheese, combo hoàn hảo.'],
            [18, 'Xoài Macchiato', 3, 'default_product.png', 24000, 48000, 100, 0, '', 'Sinh tố xoài tươi phủ kem cheese.', 'xoai macchiato', 'Sinh tố xoài tươi phủ kem cheese.'],
            [19, 'Sữa Chua Trân Châu Hạ Long', 4, 'default_product.png', 15000, 35000, 100, 0, '', 'Sữa chua nhà làm với cốt dừa và trân châu trắng cốt dừa nóng hổi.', 'sua chua tran chau ha long', 'Sữa chua nhà làm với cốt dừa và trân châu trắng cốt dừa nóng hổi.'],
            [20, 'Sữa Chua Nếp Cẩm', 4, 'default_product.png', 15000, 35000, 100, 0, '', 'Nếp cẩm điện biên dẻo thơm ăn cùng sữa chua.', 'sua chua nep cam', 'Nếp cẩm điện biên dẻo thơm ăn cùng sữa chua.'],
            [21, 'Sữa Chua Dẻo Cacao', 4, 'default_product.png', 15000, 30000, 100, 0, '', 'Sữa chua cắt miếng dẻo phục vụ cùng bột cacao.', 'sua chua deo cacao', 'Sữa chua cắt miếng dẻo phục vụ cùng bột cacao.'],
            [22, 'Matcha Đá Xay', 6, 'default_product.png', 25000, 55000, 100, 0, '', 'Matcha Ice Blended với lớp kem whipping cao ngất.', 'matcha da xay', 'Matcha Ice Blended với lớp kem whipping cao ngất.'],
            [23, 'Cookie Đá Xay', 6, 'default_product.png', 25000, 55000, 100, 0, '', 'Oreo đá xay giòn rụm, ngọt ngào.', 'cookie da xay', 'Oreo đá xay giòn rụm, ngọt ngào.'],
            [24, 'Cà Phê Cốt Dừa Đá Xay', 6, 'default_product.png', 25000, 50000, 100, 0, '', 'Đặc sản Hà Nội, cà phê nồng nàn và cốt dừa béo lạnh.', 'ca phe cot dua da xay', 'Đặc sản Hà Nội, cà phê nồng nàn và cốt dừa béo lạnh.'],
            [25, 'Bạc Xỉu', 5, 'default_product.png', 15000, 35000, 100, 0, '', 'Nhiều sữa ít cà phê, dễ uống cho mọi người.', 'bac xiu', 'Nhiều sữa ít cà phê, dễ uống cho mọi người.'],
            [26, 'Cà Phê Muối', 5, 'default_product.png', 18000, 38000, 100, 0, '', 'Trend mới, vị mặn của kem muối làm dậy vị cà phê.', 'ca phe muoi', 'Trend mới, vị mặn của kem muối làm dậy vị cà phê.'],
        ];

        foreach ($products as $prod) {
            DB::table('products')->insert([
                'product_id' => $prod[0],
                'product_name' => $prod[1],
                'category_id' => $prod[2],
                'product_image' => $prod[3],
                'product_price_buy' => $prod[4],
                'product_price_sell' => $prod[5],
                'product_amount' => $prod[6],
                'product_sale' => $prod[7],
                'product_detail' => $prod[9],
                'product_keyword' => $prod[10],
                'product_description' => $prod[11],
            ]);
        }
    }
}
