<?php

namespace App\Helpers;

use App\Enums\Constant;
use App\Models\CategoryModel;
use App\Models\UserModel;

class CommonHelper
{
     public function get_data_filter($filter)
    {
        if ($filter === Constant::category_keyword) {
            return CategoryModel::orderBy($filter, 'ASC')->paginate(Constant::PER_PAGE);
        } else {
            return CategoryModel::withCount('product')
                ->orderBy('product_count', 'DESC')
                ->paginate(Constant::PER_PAGE);
        }
    }

    public function checkUserVerify($param)
    {
        $user = UserModel::where('user_name', $param)->first();
        if (!$user) {
            return redirect('/admin')->with('msgError', 'Xác nhận thất bại, có vẻ như tài khoản của bạn chưa được tạo,Xin hãy tạo tài khoản khác!');
        }
        if ($user->is_verify == 0) {
            return false;
        }
        return true;
    }

}
