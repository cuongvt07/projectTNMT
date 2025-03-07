<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSlideTable extends Migration
{
    public function up()
    {
        Schema::create('slide', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('slide_title', 100);
            $table->string('image', 255)->nullable();
            $table->string('target', 255)->nullable();
            $table->integer('active');
            $table->integer('type');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('slide');
    }
}
