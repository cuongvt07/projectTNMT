<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCitysTable extends Migration
{
    public function up()
    {
        Schema::create('citys', function (Blueprint $table) {
            $table->integer('city_id')->primary();
            $table->string('city_name', 100);
            $table->string('city_type', 50);
        });
    }

    public function down()
    {
        Schema::dropIfExists('citys');
    }
}
