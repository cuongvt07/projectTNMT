<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDistrictsTable extends Migration
{
    public function up()
    {
        Schema::create('districts', function (Blueprint $table) {
            $table->integer('district_id')->primary();
            $table->string('district_name', 100);
            $table->string('district_type', 50);
            $table->integer('city_id');
            $table->foreign('city_id')->references('city_id')->on('citys');
        });
    }

    public function down()
    {
        Schema::dropIfExists('districts');
    }
}
