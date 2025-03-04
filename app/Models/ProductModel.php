<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProductModel extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'products';

    protected $primaryKey = 'product_id';

    protected $fillable = [
        'product_image',
        'product_name',
        'category_id',
        'product_price_buy',
        'product_price_sell',
        'product_amount',
        'product_sale',
        'product_attribute',
        'product_detail',
        'product_keyword',
        'product_description'
    ];

    /**
     * Get the category that owns the ProductModel
     *
     * @return BelongsTo
     */
    public function category()
    {
        return $this->belongsTo(CategoryModel::class, 'category_id', 'category_id');
    }

    /**
     * @return BelongsTo
     */
    public function product(): BelongsTo
    {
        return $this->belongsTo(OrderdetailModel::class, 'product_id');
    }
}
