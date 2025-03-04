@extends('frontend.layout')

@section('content')
<!-- Start Product Details Area -->
<section class="htc__product__details bg__cat--1" style="padding: 30px;">
    <!-- Start Product Details Top -->
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row" style="background: #000000; padding: 20px;">
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
                                    <input type="radio" id="star{{ $i }}" name="rating" value="{{ $i }}" @if($i==$rating) checked @endif />
                                    <label for="star{{ $i }}" title="{{ $i }} star"></label>
                                    @endfor
                                    <span>Đánh giá sản phẩm</span>
                                </div>
                            </ul>
                            <div class="product-price" id="price-preview">
                                <span class="pro-sale">Giảm {{$data->product_sale}}%</span>
                                <del>{{number_format($product_price_sale = $data->product_price_sell - ($data->product_price_sell/100 * $data->product_sale))}} ₫</del> &nbsp;
                                <span class="pro-price">{{number_format($data->product_price_sell)}} ₫</span>
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Loại danh mục:</span></p>
                                <ul class="pro__cat__list">
                                    <li><a href="/shop/category/{{$data->category_id}}">{{$data->category->category_name}}</a></li>
                                </ul>
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Thương Hiệu:</span></p>
                                <ul class="pro__cat__list">
                                    <li><a href="/shop/brand/{{$data->brand_id}}">{{$data->brand->brand_name}}</a></li>
                                </ul>
                            </div>
                            <div class="inve_brand mt-1">
                                <span class="stock-brand-title"><strong><i class="ion ion-ios-checkmark-circle"></i> Mã sản phẩm:</strong></span>
                                <span class="a-brand">{{$data->product_keyword}}</span>
                            </div>
                        </div>
                        <form>
                                @csrf
                                @php
                                $product_price_sale = $data->product_price_sell - ($data->product_price_sell/100 * $data->product_sale);
                                @endphp
                                <input type="hidden" class="cart_product_{{$data->product_id}}" value="{{$data->product_name}}">
                                <input type="hidden" class="cart_price_{{$data->product_id}}" value="{{$data->product_price_buy}}">
                                <input type="hidden" class="cart_price_sale_{{$data->product_id}}" value="{{$product_price_sale}}">
                                <input type="hidden" class="cart_brand_{{$data->product_id}}" value="{{$data->brand_name}}">
                                <input type="hidden" class="cart_amount_{{$data->product_id}}" value="{{$data->product_amount}}">
                                <input type="hidden" class="cart_quantity_{{$data->product_id}}" value="1">
                                <input type="hidden" class="cart_image_{{$data->product_id}}" value="{{$data->product_image}}">
                                <div class="sin__desc">
                                    <ul class="payment__btn">
                                        <li style="display: flex;">
                                            @if ($data->product_amount != 0)
                                            <button class="add_to_cart btn" style="width:200px; margin-right: 20px" data-id="{{$item->product_id}}" type="button">Thêm Vào Giỏ Hàng <i class="icon-handbag icons"></i></button>
                                            <button class="buy-now btn" style="width:200px; margin-right: 20px; background:#f40000" data-id="{{$item->product_id}}" type="button">Mua ngay</button>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </form>
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
                                        <span style="font-size:18px;">{!!$data->product_attribute!!}&nbsp;</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ht__pro__desc">
                <div class="rte description" style="    display: flex
;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;">
                    <div class="text-suggest" style="text-align: center;">
                        <p>Việc biết cách chọn size đồng hồ chính xác sẽ giúp bạn tiết kiệm thời gian khi mua sắm online và đảm bảo đồng hồ phù hợp với cổ tay của bạn, đặc biệt khi mua làm quà.</p>
                        <h2><strong>Cách đo và chọn size đồng hồ theo kích thước cổ tay</strong></h2>
                        <h4>Bước 1: Đo “size tay” của bạn (Chu vi cổ tay) theo 1 trong 2 cách:</h4>
                        <ul>
                            <li><strong>Cách 1:</strong> Dùng thước dây đo một vòng quanh cổ tay tại vị trí đeo đồng hồ.</li>
                            <li><strong>Cách 2:</strong> Dùng một tờ giấy quấn quanh cổ tay và đánh dấu. Sau đó, đo lại bằng thước kẻ thông thường.</li>
                        </ul>
                        <p><img fetchpriority="high" decoding="async" class="aligncenter size-full wp-image-23913 lazy-load-active" src="https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1.jpg" data-src="https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1.jpg" alt="CÁCH ĐO VÀ CHỌN SIZE ĐỒNG HỒ THEO KÍCH THƯỚC CỔ TAY (1)" width="344" height="212" srcset="https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1.jpg 344w, https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1-300x185.jpg 300w" data-srcset="https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1.jpg 344w, https://dwatches.vn/wp-content/uploads/2024/05/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-1-300x185.jpg 300w" sizes="(max-width: 344px) 100vw, 344px"></p>
                        <p><strong>Cách đo chu vi cổ tay bằng thước dây</strong></p>
                        <h4>Bước 2: Sau khi xác định được chu vi cổ tay, bạn dùng nó để đối chiếu với bảng size đồng hồ đeo tay dưới đây (áp dụng cho cả nam và nữ):</h4>
                        <ul>
                            <li><strong>Chu vi cổ tay từ 13 – 15.5 cm:</strong> Sử dụng bảng size đồng hồ phù hợp.</li>
                            <li><strong>Chu vi cổ tay từ 16 – 18.5 cm:</strong> Sử dụng bảng size đồng hồ phù hợp.</li>
                        </ul>
                        <h2><strong>Cách đo size đồng hồ đeo tay làm quà tặng</strong></h2>
                        <p>Nếu bạn muốn làm điều bất ngờ cho người thân và không biết chọn size đồng hồ như thế nào, thì đây là 2 kích cỡ thông dụng phù hợp với phần lớn người Việt:</p>
                        <ul>
                            <li><strong>Size đồng hồ nam phổ biến:</strong> 39mm – 42mm</li>
                            <li><strong>Size đồng hồ nữ phổ biến:</strong> 29mm – 34mm</li>
                        </ul>
                        <p>Hoặc bạn có thể lựa chọn theo bảng kích cỡ đồng hồ theo chuẩn Quốc Tế như sau:</p>
                        <ul>
                            <li><strong>Women’s Mini (đồng hồ nữ – size nhỏ):</strong> 23mm – 25mm</li>
                            <li><strong>Women’s Regular (đồng hồ nữ – size thông thường):</strong> 26mm – 29mm</li>
                            <li><strong>Midsize – Unisex (nam hoặc nữ đều đeo được):</strong> 34mm – 36mm</li>
                            <li><strong>Men’s Regular (đồng hồ nam – size thông thường):</strong> 37mm – 39mm</li>
                            <li><strong>Men’s Sport (đồng hồ nam – size thể thao):</strong> 40mm – 42mm</li>
                            <li><strong>Men’s XL (đồng hồ nam – size lớn, rất lớn):</strong> 45mm</li>
                        </ul>   
                    </div>             
                    <img src="/storage/image_banner/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-2.jpg" alt="">
                    <img src="/storage/image_banner/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-3.jpg" alt="">
                    <img src="/storage/image_banner/CACH-DO-VA-CHON-SIZE-DONG-HO-THEO-KICH-THUOC-CO-TAY-4.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Details Top -->
</section>
<!-- End Product Details Area -->
<!-- Start Product Description -->
<section class="htc__produc__decription bg__cat--1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <!-- Start List And Grid View -->
                <ul class="pro__details__tab" role="tablist">
                    <li role="presentation" class="description active"><a href="#description" role="tab" data-toggle="tab">Thông Tin</a></li>
                    <li role="presentation" class="review"><a href="#review" role="tab" data-toggle="tab">Bình Luận</a></li>
                </ul>
                <!-- End List And Grid View -->
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="ht__pro__details__content">
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="description" class="pro__single__content tab-pane fade in active">
                        <div class="pro__tab__content__inner">
                            {!!$data->product_detail!!}
                        </div>
                    </div>
                    <!-- End Single Content -->
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="review" class="pro__single__content tab-pane fade">
                        <div class="pro__tab__content__inner">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="ht__product__dtl">
                                        <h2 class="show-rating">Đánh giá: <span>
                                                @if ($rating == 0)
                                                {{'CHưa có đánh giá nào'}}
                                                @else
                                                {{$rating}}
                                                @endif
                                            </span></h2>
                                    </div>
                                    @if ($checkCmt)
                                    <div class="stars">
                                        <form>
                                            @csrf
                                            <input class="star star-5" id="star-5" type="radio" name="star" value="5" /> <label class="star star-5" for="star-5"></label>
                                            <input class="star star-4" id="star-4" type="radio" name="star" value="4" /> <label class="star star-4" for="star-4"></label>
                                            <input class="star star-3" id="star-3" type="radio" name="star" value="3" /> <label class="star star-3" for="star-3"></label>
                                            <input class="star star-2" id="star-2" type="radio" name="star" value="2" /> <label class="star star-2" for="star-2"></label>
                                            <input class="star star-1" id="star-1" type="radio" name="star" value="1" /> <label class="star star-1" for="star-1"></label>
                                            <textarea style="background: #fff; min-width: 260px; border: none" name="comment_customer" cols="30" rows="5" placeholder="Viết bình luận của bạn ở đây"></textarea>
                                            <ul class="payment__btn mt-0">
                                                <li><button type="button" class="btn form-control btn-comment" data-product_id="{{$data->product_id}}">Gửi bình luận</button></li>
                                            </ul>
                                        </form>
                                    </div>
                                    @else
                                    <span class="text-danger">Bạn cần đăng nhập và mua sản phẩm để bình luận</span>
                                    @endif

                                </div>
                                <div class="col-md-8">
                                    <div class="ht__product__dtl">
                                        <h2>Danh sách bình luận:</h2>
                                    </div>
                                    <br>
                                    <div class="comment-list">
                                        <div class="comment-add"></div>
                                        @foreach ($dataComment as $item)
                                        <div class="single-comment">
                                            <p><span class="text-danger">{{date('d/m/Y',strtotime($item->created_at))}} {{$item->user->user_name}}
                                                    @php
                                                    $rating = '';
                                                    for ($i=0; $i < $item->comment_rating; $i++) {
                                                        $rating = $rating . '<i style="color: red" class="icon-star icons"></i>';
                                                        };
                                                        @endphp
                                                        {!! $rating !!}
                                                </span>
                                                : {{$item->comment_customer}}
                                            </p>
                                            @if ($item->comment_admin != '')
                                            <p><span class="text-danger">--Trả lời từ Admin:</span> {{$item->comment_admin}}</p>
                                            @endif
                                        </div>
                                        <hr>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Content -->
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
                <!-- Start Single Product -->
                <div class="col-md-4 col-lg-3 col-sm-4 col-xs-6" style="height: 390px">
                    @include('frontend.libs.product')
                </div>
                <!-- End Single Product -->
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
        var cart_brand = $('.cart_brand_' + id).val();

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
                cart_brand: cart_brand,
            },
            success: function(data) {
                //
                Swal.fire(data)
                //
            }
        })

    })

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
        var cart_brand = $('.cart_brand_' + id).val();

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
                cart_brand: cart_brand,
            },
            success: function(data) {
                window.location.href = '/checkout';
            }
        })

    })

    $('.btn-comment').click(function() {
        var productId = $(this).data('product_id');
        var _token = $('input[name=_token]').val();
        var commentCustomer = $('[name=comment_customer]').val();
        var commentRating = $('input[name=star]:checked').val();
        var html = '';
        var star = '';
        // alert(commentRating)
        $.ajax({
            url: 'add-comment-customer',
            method: 'POST',
            data: {
                _token: _token,
                product_id: productId,
                comment_customer: commentCustomer,
                comment_rating: commentRating,
            },
            success: function(data) {
                if (data[3] == 1) {
                    star = `<i style="color: red" class="icon-star icons"></i>`
                } else if (data[3] == 2) {
                    star = `<i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>`
                } else if (data[3] == 3) {
                    star = `<i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>`
                } else if (data[3] == 4) {
                    star = `<i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>`
                } else if (data[3] == 5) {
                    star = `<i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>
                                <i style="color: red" class="icon-star icons"></i>`
                } else {
                    star = ''
                }

                html = `<div class="single-comment-${data[0]}">
                                <p>
                                    <span class="text-danger">${data[4]} ${data[1]} ${star}</span>
                                    : ${data[2]}
                                </p>
                            </div>
                            <hr>`;
                $('.comment-add').after(html)
                if (data[5] == 0) {
                    $('.show-rating').text('Đánh giá: Chưa có đánh giá')
                } else {
                    $('.show-rating').text('Đánh giá: ' + data[5])
                }
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
            }
        })
    })
</script>
@endsection