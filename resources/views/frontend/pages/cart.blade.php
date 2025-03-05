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
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Size</th>
                                        <th>Topping</th>
                                        <th>Số lượng</th>
                                        <th>Tổng</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (Session::get('cart'))
                                        @foreach ($cart as $key => $item)
                                            <?php
                                                // Tính tổng giá topping (nếu có)
                                                $toppingTotalPrice = !empty($item['topping']) 
                                                    ? array_sum(array_column($item['topping'], 'price')) 
                                                    : 0;
                                                // Giá sản phẩm bao gồm topping
                                                $itemPriceWithTopping = $item['cart_price_sale'] + $toppingTotalPrice;
                                                // Tính tổng giá sản phẩm
                                                $item_total = $itemPriceWithTopping * $item['cart_quantity'];
                                            ?>
                                            <tr class="tr-{{$item['cart_id']}}">
                                                <td style="color: #000;">{{ $key + 1 }}</td>
                                                <td style="color: #000;" class="product-name">
                                                    <a href="/shop/product/{{$item['cart_id']}}-{{Str::slug($item['cart_product'], '-')}}.html">
                                                        {{$item['cart_product']}}
                                                    </a>
                                                    <br>
                                                    <small>Giá: {{number_format($itemPriceWithTopping)}} VNĐ</small>
                                                </td>
                                                <td style="color: #000;">{{ $item['size'] }}</td>
                                                <td style="color: #000;">
                                                    @if (!empty($item['topping']))
                                                        {{ implode('; ', array_column($item['topping'], 'name')) }}
                                                    @else
                                                        Không có topping
                                                    @endif
                                                </td>
                                                <td style="color: #000;width: 5%;">
                                                    <form>
                                                        @csrf
                                                        <input class="get_qty form-control d-inline-block w-auto" name="qty_{{$item['cart_id']}}" data-id="{{$item['cart_id']}}" type="number" value="{{$item['cart_quantity']}}" min="1" />
                                                    </form>
                                                </td>
                                                <td style="color: #000;">
                                                    <span name="total_{{$item['cart_id']}}">{{number_format($item_total)}} VNĐ</span>   
                                                </td>
                                                <td style="color: #000; width: 5%;">
                                                    <form>
                                                        @csrf
                                                        <button type="button" class="cart_delete btn btn-danger btn-sm" data-id_delete="{{$item['cart_id']}}">
                                                            <i class="icon-trash icons"></i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="6"><span class="text-danger">Giỏ Hàng Hiện Tại Đang Trống</span></td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="buttons-cart--inner mt-4">
                                    <div class="buttons-cart">
                                        <a href="/shop" class="btn btn-secondary">Quay lại mua hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @if (Auth::check() && Session::get('cart'))
                            <div class="row mt-4">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="ht__coupon__code">
                                        <span>Mã Giảm Giá</span>
                                        <form>
                                            @csrf
                                            <div class="coupon__box d-flex">
                                                <input type="text" name="coupon_code" class="form-control me-2" placeholder="Mã giảm giá">
                                                <div class="ht__cp__btn">
                                                    <button id="check_coupon_cart" type="button" class="btn btn-primary">Áp Dụng</button>
                                                </div>
                                            </div>
                                            <p class="text-success mt-2" id="cart_coupon_message"></p>
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
                                                <li id="cart_total">{{number_format($cart_totals)}} đ</li>
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
                                            <li class="active"><a href="/checkout" class="btn btn-success">Thanh toán</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @elseif (!Auth::check())
                            <div class="alert alert-danger mt-4" role="alert">
                                Bạn cần đăng nhập để thanh toán*
                            </div>
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
            var cart_quantity = $('input[name=qty_' + id + ']').val();
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
                    $('span[name=total_' + id + ']').text(data[0].toLocaleString('ja-JP')); // Không cần cột tổng giá trong bảng nên không cập nhật
                    $('input[name=qty_' + id + ']').val(data[3]);
                    $('#cart_total').text(data[1].toLocaleString('ja-JP') + ' VNĐ');
                }
            });
        });
    </script>
@endsection