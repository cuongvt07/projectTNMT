@extends('frontend.layout')

@section('content')
<!-- Start Product Details Area -->
<section class="htc__product__details bg__cat--1" style="padding: 30px;">
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row" style="background: #999;padding: 20px;">
                <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__product__details__tab__content">
                        <!-- Start Product Big Images -->
                        <div class="product__big__images">
                            <div class="portfolio-full-image tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="img-tab-0">
                                    <img style="width: 460px; height: 460px" src="{{$data->product_image}}" alt="full-image">
                                </div>
                                @foreach ($dataProductImages as $item)
                                <div role="tabpanel" class="tab-pane fade" id="img-tab-{{$item->image_id}}">
                                    <img style="width: 460px; height: 460px" src="{{$item->image_name}}" alt="full-image">
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- End Product Big Images -->
                        <!-- Start Small images -->
                        <ul class="product__small__images" role="tablist">
                            <li role="presentation" class="pot-small-img active">
                                <a href="#img-tab-0" role="tab" data-toggle="tab">
                                    <img style="width: 80px" src="{{$data->product_image}}" alt="small-image">
                                </a>
                            </li>
                            @foreach ($dataProductImages as $item)
                            <li role="presentation" class="pot-small-img">
                                <a href="#img-tab-{{$item->image_id}}" role="tab" data-toggle="tab">
                                    <img style="width: 80px" src="{{$item->image_name}}" alt="small-image">
                                </a>
                            </li>
                            @endforeach
                        </ul>
                        <!-- End Small images -->
                    </div>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                    <div class="ht__product__dtl">
                        <h1 class="product-title product_title entry-title" style="font-family: 'sans-serif', sans-serif;font-style: normal;font-weight: 700;text-decoration: none;text-transform: none; color:#fff">{{$data->product_name}}</h1>
                        <hr>
                        <div class="woocommerce-product-rating woocustom_single_rating">
                            <ul class="rating">
                                <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                    @for($i = 5; $i >= 1; $i--)
                                    <label for="star{{ $i }}" title="{{ $i }} star"></label>
                                    @endfor
                                </div>
                                <div class="best-saler">
                                    <span>Best Seller</span>
                                </div>
                            </ul>
                            <div class="product-price" id="price-preview">
                                <span class="pro-sale">Giảm {{$data->product_sale}}%</span>
                                @if($data->product_sale == 0)
                                    <span class="pro-price">{{number_format($data->product_price_sell)}} ₫</span>
                                @else
                                    <del>{{number_format($product_price_sale = $data->product_price_sell - ($data->product_price_sell/100 * $data->product_sale))}} ₫</del>  
                                    <span class="pro-price">{{number_format($data->product_price_sell)}} ₫</span>
                                @endif
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Loại danh mục TS:</span></p>
                                <ul class="pro__cat__list">
                                    <li><a href="/shop/category/{{$data->category_id}}">{{$data->category->category_name}}</a></li>
                                </ul>
                            </div>
                            <div class="inve_brand mt-1">
                                <span class="stock-brand-title"><strong><i class="ion ion-ios-checkmark-circle"></i> Mã sản phẩm:</strong></span>
                                <span class="a-brand">{{$data->product_keyword}}</span>
                            </div>

                            <!-- Thêm tùy chọn Size và Topping -->
                            <form>
                                @csrf
                                @php
                                $product_price_sale = $data->product_price_sell - ($data->product_price_sell/100 * $data->product_sale);
                                @endphp
                                <input type="hidden" class="cart_product_{{$data->product_id}}" value="{{$data->product_name}}">
                                <input type="hidden" class="cart_price_{{$data->product_id}}" value="{{$data->product_price_buy}}">
                                <input type="hidden" class="cart_price_sale_{{$data->product_id}}" value="{{$product_price_sale}}">
                                <input type="hidden" class="cart_amount_{{$data->product_id}}" value="{{$data->product_amount}}">
                                <input type="hidden" class="cart_quantity_{{$data->product_id}}" value="1">
                                <input type="hidden" class="cart_image_{{$data->product_id}}" value="{{$data->product_image}}">

                                <!-- Tùy chọn Size -->
                                <div class="sin__desc mt-2">
                                    <p><span>Size:</span></p>
                                    <div class="size-options" style="display: flex; gap: 10px;">
                                        <label><input type="radio" name="size_{{$data->product_id}}" value="M" checked> M</label>
                                        <label><input type="radio" name="size_{{$data->product_id}}" value="L"> L (+7000đ)</label>
                                    </div>
                                </div>

                                <!-- Tùy chọn Topping -->
                                <div class="sin__desc mt-2">
                                    <p><span>Topping:</span></p>
                                    <div class="topping-options" style="display: flex; gap: 10px; flex-wrap: wrap;">
                                        @foreach ($dataToppings as $topping)
                                            <label><input type="checkbox" name="topping_{{$data->product_id}}[]" value="{{$topping->topping_id}}"> {{$topping->topping_name}} ({{number_format($topping->topping_price)}}đ)</label>
                                        @endforeach
                                    </div>
                                </div>

                                <div class="sin__desc">
                                    <ul class="payment__btn">
                                        <li style="display: flex;">
                                            @if ($data->product_amount != 0)
                                            <button class="add_to_cart btn" style="width:200px; margin-right: 20px" data-id="{{$data->product_id}}" type="button">Thêm Vào Giỏ Hàng <i class="icon-handbag icons"></i></button>
                                            <button class="buy-now btn" style="width:200px; margin-right: 20px; background:#f40000" data-id="{{$data->product_id}}" type="button">Mua ngay</button>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </form>
                        </div>
                        <hr>
                        <div class="inventory_quantity bizweb deny 5">
                            <span class="stock-brand-title">
                                <strong>
                                    <i class="ion ion-ios-checkmark-circle"> </i> Tình trạng:
                                </strong>
                            </span>
                            @if ($data->product_amount != 0)
                            <span class="a-stock a0" style="color: #fffe00;">Còn hàng</span>
                            @else
                            <span class="text-danger" style="color: #f40000;">Sản phẩm này đã hết hàng</span>
                            @endif
                        </div>
                        <hr>
                        <div class="ht__pro__desc">
                            <div class="product-summary product_description margin-bottom-15 margin-top-15">
                                <div class="rte description">
                                    <p style="text-align: justify;">
                                        <span style="font-size:18px;">{!!$data->product_attribute!!} </span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Details Area -->
<!-- Start Product Description -->
<section class="htc__produc__decription bg__cat--1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="pro__details__tab" role="tablist">
                    <li role="presentation" class="description active"><a href="#description" role="tab" data-toggle="tab">Thông Tin</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="ht__pro__details__content">
                    <div role="tabpanel" id="description" class="pro__single__content tab-pane fade in active">
                        <div class="pro__tab__content__inner">
                            {!!$data->product_detail!!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Description -->
<!-- Start Product Area -->
<section class="htc__product__area--2 bg__cat--1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    @if (count($dataProductCategory) > 0)
                    <h2 class="title__line">SẢN PHẨM LIÊN QUAN</h2>
                    @endif
                </div>
            </div>
        </div>
        <div class="row">
            <div class="product__wrap clearfix">
                @foreach ($dataProductCategory as $item)
                <div class="col-md-4 col-lg-3 col-sm-4 col-xs-6" style="height: 390px">
                    @include('frontend.libs.product')
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<!-- End Product Area -->
@endsection

@section('script')
<script>
    $('.add_to_cart').click(function() {
        var id = $(this).data('id');
        var type = 'add-to-cart';
        var _token = $('input[name=_token]').val();
        var cart_product = $('.cart_product_' + id).val();
        var cart_price = $('.cart_price_' + id).val();
        var cart_price_sale = $('.cart_price_sale_' + id).val();
        var cart_amount = $('.cart_amount_' + id).val();
        var cart_quantity = $('.cart_quantity_' + id).val();
        var cart_image = $('.cart_image_' + id).val();
        var size = $('input[name=size_' + id + ']:checked').val();
        var toppings = [];
        $('input[name="topping_' + id + '[]"]:checked').each(function() {
            toppings.push($(this).val());
        });

        $.ajax({
            url: 'add_to_cart',
            method: 'POST',
            data: {
                _token: _token,
                cart_id: id,
                type: type,
                cart_product: cart_product,
                cart_price: cart_price,
                cart_price_sale: cart_price_sale,
                cart_amount: cart_amount,
                cart_quantity: cart_quantity,
                cart_image: cart_image,
                size: size,
                toppings: toppings
            },
            success: function(data) {
                Swal.fire(data);
            }
        });
    });

    $('.buy-now').click(function() {
        var id = $(this).data('id');
        var type = 'buy-now';
        var _token = $('input[name=_token]').val();
        var cart_product = $('.cart_product_' + id).val();
        var cart_price = $('.cart_price_' + id).val();
        var cart_price_sale = $('.cart_price_sale_' + id).val();
        var cart_amount = $('.cart_amount_' + id).val();
        var cart_quantity = $('.cart_quantity_' + id).val();
        var cart_image = $('.cart_image_' + id).val();
        var size = $('input[name=size_' + id + ']:checked').val();
        var toppings = [];
        $('input[name="topping_' + id + '[]"]:checked').each(function() {
            toppings.push($(this).val());
        });

        $.ajax({
            url: 'add_to_cart',
            method: 'POST',
            data: {
                _token: _token,
                cart_id: id,
                type: type,
                cart_product: cart_product,
                cart_price: cart_price,
                cart_price_sale: cart_price_sale,
                cart_amount: cart_amount,
                cart_quantity: cart_quantity,
                cart_image: cart_image,
                size: size,
                toppings: toppings
            },
            success: function(data) {
                window.location.href = '/checkout';
            }
        });
    });

    $('.btn-comment').click(function() { /* Giữ nguyên phần comment */ });
    $('.handle_wishlist').click(function() { /* Giữ nguyên phần wishlist */ });
</script>
@endsection