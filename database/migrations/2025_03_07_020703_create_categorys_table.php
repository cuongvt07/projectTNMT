<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategorysTable extends Migration
{
    public function up()
    {
        Schema::create('categorys', function (Blueprint $table) {
            $table->tinyIncrements('category_id');
            $table->string('category_name', 50);
            $table->text('category_keyword');
            $table->text('category_description');
            $table->timestamps(); // tạo trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('categorys');
    }
}
