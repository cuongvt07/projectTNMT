<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderdetailToppingTable extends Migration
{
    public function up()
    {
        Schema::create('orderdetail_topping', function (Blueprint $table) {
            $table->unsignedBigInteger('order_detail_id');
            $table->unsignedInteger('topping_id');
            $table->decimal('topping_price', 10, 2);
            $table->primary(['order_detail_id', 'topping_id']);
            $table->foreign('order_detail_id')->references('order_detail_id')->on('orderdetail')->onDelete('cascade');
            $table->foreign('topping_id')->references('topping_id')->on('toppings')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('orderdetail_topping');
    }
}
