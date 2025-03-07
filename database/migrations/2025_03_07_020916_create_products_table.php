<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('product_id');
            $table->string('product_name', 50);
            $table->unsignedTinyInteger('category_id')->nullable();
            $table->text('product_image')->nullable();
            $table->integer('product_price_buy');
            $table->integer('product_price_sell');
            $table->integer('product_amount');
            $table->integer('product_sale')->nullable();
            $table->text('product_attribute');
            $table->text('product_detail');
            $table->text('product_keyword')->nullable();
            $table->text('product_description')->nullable();
            $table->foreign('category_id')->references('category_id')->on('categorys')->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}
