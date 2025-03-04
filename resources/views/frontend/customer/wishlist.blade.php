@extends('frontend.layout')

@section('content')
<div class="container pt--20" style="background: #c0c5cc;">
    @include('frontend.note')
    <div class="row">
        <center>
            <p style="color: #000; font-size: 2em">Danh Sách Yêu Thích</p>
        </center>
    </div>
    <br>
    <div class="row mt-5">
        <div class="col-md-3 mtb--10">
            @include('frontend.customer.menu')
            <form action="/customer/logout" method="post">
                @csrf
                <button class="btn" style="color: #000; border: 1px solid #000; background: transparent; border-radius: 0">Đăng Xuất</button>
            </form>
        </div>
        <div class="col-md-9">
            <div class="row">
                <div class="product__wrap clearfix">
                    @foreach ($data as $item)

                    <!-- Start Single Category -->
                    <div class="col-md-3 col-lg-3 col-sm-4 col-xs-6 prd-{{$item->product->product_id}}" style="max-height: 380px">
                        <div class="category">
                            <div class="ht__cat__thumb">
                                @if ($item->product->product_sale != 0)
                                <span class="sale-span">-{{ $item->product->product_sale }}%</span>
                                @endif
                                @if ($item->product->product_amount == 0)
                                <span class="sale-span" style="background-color: red;">Hết Hàng</span>
                                @endif
                                <a href="product-details.html">
                                    <img style="max-width: 260px; height: 260px" src="{{ $item->product->product_image }}" alt="product images">
                                </a>
                            </div>
                            <div class="fr__hover__info">
                                <form>
                                    @csrf
                                    @php
                                    $product_price_sale = $item->product->product_price_sell - ($item->product->product_price_sell/100 * $item->product->product_sale);
                                    @endphp
                                    <input type="hidden" class="cart_product_{{$item->product->product_id}}" value="{{$item->product->product_name}}">
                                    <input type="hidden" class="cart_price_{{$item->product->product_id}}" value="{{$item->product->product_price_buy}}">
                                    <input type="hidden" class="cart_price_sale_{{$item->product->product_id}}" value="{{$product_price_sale}}">
                                    <input type="hidden" class="cart_brand_{{$item->product->product_id}}" value="{{$item->product->brand_name}}">
                                    <input type="hidden" class="cart_amount_{{$item->product->product_id}}" value="{{$item->product->product_amount}}">
                                    <input type="hidden" class="cart_quantity_{{$item->product->product_id}}" value="1">
                                    <input type="hidden" class="cart_image_{{$item->product->product_id}}" value="{{$item->product->product_image}}">
                                    <ul class="product__action">
                                        @if ($item->product->amount !=0)
                                        <li><button class="add_to_cart" data-id="{{$item->product->product_id}}" type="button"><i class="icon-handbag icons"></i></button></li>
                                        @endif
                                </form>
                                <form>
                                    @csrf
                                    <li><button class="handle_wishlist" data-product_id="{{$item->product->product_id}}" type="button"><i class="icon-heart icons"></i></button></li>
                                </form>
                                </ul>
                            </div>
                            <div class="fr__product__inner">
                                <h4><a href="/shop/product/{{$item->product->product_id}}-{{Str::slug($item->product->product_name, '-')}}.html">{{$item->product->product_name}}</a></h4>
                                <ul class="fr__pro__prize">
                                    @if ($item->product->product_sale != 0)
                                    <li class="old__prize">{{number_format($item->product->product_price_sell)}} VNĐ</li>
                                    @endif
                                    <li>{{number_format($product_price_sale)}} VNĐ</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Category -->
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $('.add_to_cart').click(function() {
        var id = $(this).data('id');
        // alert(id);
        var _token = $('input[name=_token]').val();
        var cart_product = $('.cart_product_' + id).val();
        var cart_price = $('.cart_price_' + id).val();
        var cart_price_sale = $('.cart_price_sale_' + id).val();
        var cart_amount = $('.cart_amount_' + id).val();
        var cart_quantity = $('.cart_quantity_' + id).val();
        var cart_image = $('.cart_image_' + id).val();
        var cart_brand = $('.cart_brand_' + id).val();
        $.ajax({
            url: 'add_to_cart',
            method: 'POST',
            data: {
                _token: _token,
                cart_id: id,
                cart_product: cart_product,
                cart_price: cart_price,
                cart_price_sale: cart_price_sale,
                cart_amount: cart_amount,
                cart_quantity: cart_quantity,
                cart_image: cart_image,
                cart_brand: cart_brand,
            },
            success: function() {
                //
                Swal.fire('Thêm giỏ hàng thành công')
                //
            }
        })

    })

    $('.handle_wishlist').click(function() {
        var product_id = $(this).data('product_id');
        var _token = $('input[name=_token]').val();

        $.ajax({
            url: 'handle-wishlist',
            method: 'POST',
            data: {
                _token: _token,
                product_id: product_id,
            },
            success: function(data) {
                Swal.fire(data)
                $('.prd-' + product_id).remove()
            }
        })
    })
</script>
@endsection