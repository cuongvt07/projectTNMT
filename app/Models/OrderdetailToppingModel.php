<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderdetailToppingModel extends Model
{
    use HasFactory;

    protected $table = 'orderdetail_topping';
    protected $primaryKey = 'order_detail_id';
    public $timestamps = false;

    public function topping()
    {
        return $this->belongsTo(ToppingModel::class, 'topping_id', 'topping_id');
    }
}
