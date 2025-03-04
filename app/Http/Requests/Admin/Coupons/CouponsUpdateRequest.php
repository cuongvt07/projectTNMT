<?php

namespace App\Http\Requests\Admin\Coupons;

use Illuminate\Foundation\Http\FormRequest;

class CouponsUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'coupon_name' => 'min:10|max:50',
            'coupon_code' => 'min:5|max:30',
        ];
    }

    public function messages()
    {
        return [
            'coupon_name.min' => 'Tên mã giảm giá không được để ngắn hơn 10 kí tự và dài hơn 50 kí tự',
            'coupon_name.max' => 'Tên mã giảm giá không được để ngắn hơn 10 kí tự và dài hơn 50 kí tự',
            'coupon_code.min' => 'Mã giảm giá không được để ngắn hơn 5 kí tự và dài hơn 30 kí tự',
            'coupon_code.max' => 'Mã giảm giá không được để ngắn hơn 5 kí tự và dài hơn 30 kí tự',
        ];
    }
}
