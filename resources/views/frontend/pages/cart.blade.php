@extends('frontend.layout')

@section('content')
    <!-- cart-main-area start -->
    <div class="cart-main-area ptb--100 bg__white">
        @include('frontend.note')
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <form action="#">
                        <div class="table-content table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail">Sản phẩm</th>
                                        <th class="product-name">Tên sản phẩm</th>
                                        <th class="product-price">Giá</th>
                                        <th class="product-price">Thương Hiệu</th>
                                        <th class="product-quantity">Số lượng</th>
                                        <th class="product-subtotal">Tổng giá</th>
                                        <th class="product-remove">Xoá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (Session::get('cart'))
                                        @foreach ($cart as $item)
                                            <?php
                                                $weight = \App\Helpers\CommonHelper::get_data_weight($item['cart_weight']);
                                                // Tính tổng giá topping (nếu có)
                                                $toppingTotalPrice = !empty($item['topping']) 
                                                    ? array_sum(array_column($item['topping'], 'price')) 
                                                    : 0;
                                                // Giá sản phẩm bao gồm topping
                                                $itemPriceWithTopping = $item['cart_price_sale'] + $toppingTotalPrice;
                                                // Tổng giá = giá sản phẩm (bao gồm topping) * số lượng
                                                $totalItemPrice = $itemPriceWithTopping * $item['cart_quantity'];
                                            ?>
                                            <tr class="tr-{{$item['cart_id']}}">
                                                <td class="product-thumbnail">
                                                    <a href="/shop/product/{{$item['cart_id']}}-{{Str::slug($item['cart_product'], '-')}}.html">
                                                        <img style="width: 100px; height: 120px" src="{{$item['cart_image']}}" alt="product img" />
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                    <a href="/shop/product/{{$item['cart_id']}}-{{Str::slug($item['cart_product'], '-')}}.html">{{$item['cart_product']}}</a>
                                                    <br>
                                                    <span class="size">Size: {{$item['size']}}</span>
                                                    <br>
                                                    <span class="topping">
                                                        @if (!empty($item['topping']))
                                                            Topping: {{ implode(', ', array_column($item['topping'], 'name')) }}
                                                        @else
                                                            Không có topping
                                                        @endif
                                                    </span>
                                                </td>
                                                <td class="product-price"><span class="amount">{{number_format($itemPriceWithTopping)}}</span></td>
                                                <td class="product-price"><span class="product-brand">{{ $weight }}</span></td>
                                                <td class="product-quantity">
                                                    <form>
                                                        @csrf
                                                        <input class="get_qty" name="qty_{{$item['cart_id']}}" data-id="{{$item['cart_id']}}" type="number" value="{{$item['cart_quantity']}}" />
                                                    </form>
                                                </td>
                                                <td class="product-subtotal" name="total_{{$item['cart_id']}}">{{number_format($totalItemPrice)}}</td>
                                                <td class="product-remove">
                                                    <form>
                                                        @csrf
                                                        <button type="button" class="cart_delete" data-id_delete="{{$item['cart_id']}}">
                                                            <i class="icon-trash icons"></i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="7"><span class="text-danger">Giỏ Hàng Hiện Tại Đang Trống</span></td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="buttons-cart--inner">
                                    <div class="buttons-cart">
                                        <a href="/shop">Quay lại mua hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @if (Auth::check() && Session::get('cart'))
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="ht__coupon__code">
                                        <span>Mã Giảm Giá</span>
                                        <form>
                                            @csrf
                                            <div class="coupon__box">
                                                <input type="text" name="coupon_code" placeholder="Mã giảm giá">
                                                <div class="ht__cp__btn">
                                                    <button id="check_coupon_cart" type="button">Áp Dụng</button>
                                                </div>
                                                <br>
                                            </div>
                                            <br>
                                            <p class="text-success" id="cart_coupon_message"></p>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 smt-40 xmt-40">
                                    <div class="htc__cart__total">
                                        <h6>Tổng giỏ hàng tạm tính</h6>
                                        <div class="cart__desk__list">
                                            <ul class="cart__desc">
                                                <li>Tổng giá sản phẩm</li>
                                                <li>Giảm giá</li>
                                            </ul>
                                            <ul class="cart__price">
                                                <li id="cart_total">{{number_format($cart_total)}} đ</li>
                                                <li id="cart_coupon">
                                                    <span id="cart_coupon_status"></span>
                                                    {{$coupon_cart}}
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="cart__total">
                                            <span>Tổng (Chưa phí vận chuyển): </span>
                                            <span id="cart_totals">{{number_format($cart_totals)}} đ</span>
                                        </div>
                                        <ul class="payment__btn">
                                            <li class="active"><a href="/checkout">Thanh toán</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @elseif (!Auth::check())
                            <span class="text-danger">Bạn cần đăng nhập để thanh toán*</span>
                        @endif
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- cart-main-area end -->
@endsection

@section('script')
    <script>
        // Handle check add coupon code
        $('#check_coupon_cart').click(function () {
            var _token = $('input[name=_token]').val();
            var couponCode = $('input[name=coupon_code]').val();
            $.ajax({
                url: 'add_coupon_cart',
                method: 'POST',
                data: {
                    _token: _token,
                    coupon_code: couponCode,
                },
                success: function (data) {
                    $('#cart_coupon_message').text(data[0]);
                    $('#cart_coupon').html(data[3]);
                    $('#cart_totals').text(data[2].toLocaleString('ja-JP') + ' VNĐ');
                }
            });
        });

        // Handle xóa cart
        $('.cart_delete').click(function () {
            var id = $(this).data('id_delete');
            var _token = $('input[name=_token]').val();
            $.ajax({
                url: 'delete_product_cart',
                method: 'POST',
                data: {
                    _token: _token,
                    cart_id: id,
                },
                success: function (data) {
                    $('.tr-' + id).remove();
                    $('#cart_total').text(data[0].toLocaleString('ja-JP') + ' VNĐ');
                    $('#cart_totals').text(data[1].toLocaleString('ja-JP') + ' VNĐ');
                }
            });
        });

        // Handle cập nhật số lượng cart
        $('.get_qty').change(function() {
            var id = $(this).data('id');
            var cart_quantity = $('input[name=qty_' + id + ']').val(); // Sửa cú pháp selector
            var _token = $('input[name=_token]').val();
            $.ajax({
                url: 'update_quantity_cart',
                method: 'POST',
                data: {
                    _token: _token,
                    cart_quantity: cart_quantity,
                    cart_id: id,
                },
                success: function (data) {
                    $('#cart_totals').text(data[2].toLocaleString('ja-JP') + ' VNĐ');
                    $('td[name=total_' + id + ']').text(data[0].toLocaleString('ja-JP')); // Sửa cú pháp selector
                    $('input[name=qty_' + id + ']').val(data[3]); // Sửa cú pháp selector
                    $('#cart_total').text(data[1].toLocaleString('ja-JP') + ' VNĐ');
                }
            });
        });
    </script>
@endsection