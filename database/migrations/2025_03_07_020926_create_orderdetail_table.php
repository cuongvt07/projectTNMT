<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderdetailTable extends Migration
{
    public function up()
    {
        Schema::create('orderdetail', function (Blueprint $table) {
            $table->bigIncrements('order_detail_id');
            $table->unsignedBigInteger('order_id')->nullable();
            $table->unsignedInteger('product_id')->nullable();
            $table->string('size', 10)->nullable();
            $table->integer('order_detail_quantity');
            $table->integer('order_detail_price');
            $table->timestamps();
            $table->foreign('order_id')->references('order_id')->on('orders');
            $table->foreign('product_id')->references('product_id')->on('products');
        });
    }

    public function down()
    {
        Schema::dropIfExists('orderdetail');
    }
}
