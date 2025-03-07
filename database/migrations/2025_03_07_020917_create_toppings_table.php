<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateToppingsTable extends Migration
{
    public function up()
    {
        Schema::create('toppings', function (Blueprint $table) {
            $table->increments('topping_id');
            $table->string('topping_name', 255);
            $table->decimal('price', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('toppings');
    }
}
