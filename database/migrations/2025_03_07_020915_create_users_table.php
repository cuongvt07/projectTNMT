<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('user_id');
            $table->string('user_name', 100);
            $table->string('user_email', 30)->unique()->nullable();
            $table->string('password', 255)->nullable();
            $table->string('user_phone', 10)->nullable();
            $table->string('user_address', 255)->nullable();
            $table->integer('user_district')->nullable();
            $table->integer('user_city')->nullable();
            $table->string('provider', 255)->nullable();
            $table->string('provider_id', 255)->nullable();
            $table->integer('role_id');
            $table->timestamps();
            $table->boolean('is_verify');
            $table->string('verification_code', 255);
        });
    }

    public function down()
    {
        Schema::dropIfExists('users');
    }
}
