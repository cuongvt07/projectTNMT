<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ToppingModel extends Model
{
    use HasFactory;

    protected $table = 'toppings';

    protected $primaryKey = 'topping_id';
}
