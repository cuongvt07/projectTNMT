<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('order_id');
            $table->unsignedInteger('user_id')->nullable();
            $table->text('order_shipping');
            $table->string('ward', 255)->nullable();
            $table->string('address', 255)->nullable();
            $table->string('order_note', 255)->nullable();
            $table->integer('order_pay_type');
            $table->integer('order_profit');
            $table->integer('order_total');
            $table->integer('shipping_fee')->nullable();
            $table->integer('order_status');
            $table->timestamps();
            $table->foreign('user_id')->references('user_id')->on('users')->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
