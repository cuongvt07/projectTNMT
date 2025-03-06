@extends('frontend.layout')

@section('content')
@include('frontend.note')
<!-- Start Slider Area -->
<div class="slider__container slider--one bg__cat--3">
    <div class="slide__container slider__activation__wrap owl-carousel">
        @foreach ($dataSilde as $slide)
        <!-- Start Single Slide -->
        <div class="single__slide animation__style01 slider__fixed--height">
            <div class="slide__thumb">
                <img src="{{$slide->image}}"
                    alt="slider images VINANEON">
            </div>
        </div>
        <!-- End Single Slide -->
        @endforeach
    </div>
</div>
<!-- Start Slider Area -->
<!-- HTML -->
<div class="tab-category owl-carousel">
  <div class="slider-block" style="background-image: url('https://theme.hstatic.net/200000421745/1000900421/14/col_1.png?v=180');">
    <div class="slider-text"><a>Trà Sữa</a></div>
  </div>
  <div class="slider-block" style="background-image: url('https://theme.hstatic.net/200000421745/1000900421/14/col_2.png?v=180');">
    <div class="slider-text"><a>Trà Tươi</a></div>
  </div>
  <div class="slider-block" style="background-image: url('https://theme.hstatic.net/200000421745/1000900421/14/col_3.png?v=180');">
    <div class="slider-text"><a>Kem Sữa & Latte</a></div>
  </div>
  <div class="slider-block" style="background-image: url('https://theme.hstatic.net/200000421745/1000900421/14/col_4.png?v=180');">
    <div class="slider-text"><a>Trà Trái Cây</a></div>
  </div>
</div>
<!-- Start Product new Area -->

<section class="awe-section-3">	
	<div class="section_about">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-xs-12 section_about_flex">

				<div class="title_brand heading" style="
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 10px;
">
					<h2 title="Về Comebuy">
						<span class="text_gradient" style="
    color: #f5a623;
">Về Comebuy</span>
					</h2>
					<p style="text-align: center; color: #f5a623">
						Đối với nhiều người, trà chỉ là một món thức uống đơn thuần. Nhưng đối với COMEBUY, chúng tôi đảm bảo mỗi ly trà đều được phục vụ với mục đích gửi đến bạn những trải nghiệm tuyệt vời nhất
					</p>
				</div>
				<div class="uti_content">
					<div class="owl-carousel owl-theme uti_content owl-loaded owl-drag" data-play="false" data-loop="true" data-nav="true" data-lg-items="3" data-md-items="3" data-sm-items="3" data-xs-items="1" data-margin="30">
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1170px, 0px, 0px); transition: all; width: 3510px;"><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_1.png?v=180" alt="COMEBUY hương vị tuyệt hảo">
							</span>
							<div class="content">
								<span class="title">COMEBUY hương vị tuyệt hảo</span>
								<span class="sum">Niềm đam mê của chúng tôi gắn liền với những Lá Trà vì thế chúng tôi luôn mang đến hương vị hoàn hảo nhất</span>
							</div>
						</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_2.png?v=180" alt="COMEBUY trà tươi">
							</span>
							<div class="content">
								<span class="title">COMEBUY trà tươi</span>
								<span class="sum">
Made-to-order, công nghệ pha trà tiên tiến nhất mang đến cho bạn ly trà vẹn nguyên hương vị ngay khi bạn muốn</span>
							</div>
						</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_3.png?v=180" alt="Với COMEBUY, an toàn là trên hết">
							</span>
							<div class="content">
								<span class="title">Với COMEBUY, an toàn là trên hết</span>
								<span class="sum">
Comebuy cam kết sử dụng nguyên liệu cao cấp, mang đến bạn những đồ uống không chỉ ngon mà còn tốt cho sức khỏe</span>
							</div>
						</div></div><div class="owl-item active" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload loaded" src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_1.png?v=180" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_1.png?v=180" alt="COMEBUY hương vị tuyệt hảo" data-was-processed="true">
							</span>
							<div class="content">
								<span class="title">COMEBUY hương vị tuyệt hảo</span>
								<span class="sum">Niềm đam mê của chúng tôi gắn liền với những Lá Trà vì thế chúng tôi luôn mang đến hương vị hoàn hảo nhất</span>
							</div>
						</div></div><div class="owl-item active" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload loaded" src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_2.png?v=180" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_2.png?v=180" alt="COMEBUY trà tươi" data-was-processed="true">
							</span>
							<div class="content">
								<span class="title">COMEBUY trà tươi</span>
								<span class="sum">
Made-to-order, công nghệ pha trà tiên tiến nhất mang đến cho bạn ly trà vẹn nguyên hương vị ngay khi bạn muốn</span>
							</div>
						</div></div><div class="owl-item active" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload loaded" src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_3.png?v=180" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_3.png?v=180" alt="Với COMEBUY, an toàn là trên hết" data-was-processed="true">
							</span>
							<div class="content">
								<span class="title">Với COMEBUY, an toàn là trên hết</span>
								<span class="sum">
Comebuy cam kết sử dụng nguyên liệu cao cấp, mang đến bạn những đồ uống không chỉ ngon mà còn tốt cho sức khỏe</span>
							</div>
						</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_1.png?v=180" alt="COMEBUY hương vị tuyệt hảo">
							</span>
							<div class="content">
								<span class="title">COMEBUY hương vị tuyệt hảo</span>
								<span class="sum">Niềm đam mê của chúng tôi gắn liền với những Lá Trà vì thế chúng tôi luôn mang đến hương vị hoàn hảo nhất</span>
							</div>
						</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_2.png?v=180" alt="COMEBUY trà tươi">
							</span>
							<div class="content">
								<span class="title">COMEBUY trà tươi</span>
								<span class="sum">
Made-to-order, công nghệ pha trà tiên tiến nhất mang đến cho bạn ly trà vẹn nguyên hương vị ngay khi bạn muốn</span>
							</div>
						</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="uti_body">
							<span class="icon">
								<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="//theme.hstatic.net/200000421745/1000900421/14/icon_uti_3.png?v=180" alt="Với COMEBUY, an toàn là trên hết">
							</span>
							<div class="content">
								<span class="title">Với COMEBUY, an toàn là trên hết</span>
								<span class="sum">
Comebuy cam kết sử dụng nguyên liệu cao cấp, mang đến bạn những đồ uống không chỉ ngon mà còn tốt cho sức khỏe</span>
							</div>
						</div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-chevron-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-chevron-right"></i></button></div><div class="owl-dots disabled"></div></div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>

<section class="htc__category__area ptb--40">
    <div class="container product-container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">
                        <a>FLASH SALE</a>
                    </h2>
                    <img class="img-title"src="https://www.watchstore.vn/images/block/compress/banner-xu-huong-home_1733460990.webp" alt="">
                </div>
            </div>
        </div>
        <div class="htc__product__container">
            <!-- Owl Carousel wrapper -->
            <div class="owl-carousel product__list mt--30 mb--20" style="height: auto;">
                @foreach ($dataProductSales as $item)
                    <div class="item" style="height: 390px;">
                        @include('frontend.libs.product')
                    </div>
                @endforeach
            </div> 
            @foreach ($dataProductSales as $item)
            <div id="cartModal_{{$item->product_id}}" class="cart-modal cart-modal-{{$item->product_id}}">
                <div class="modal-content">
                    <button href="#"><i class="zmdi zmdi-close close-btn" data-id="{{$item->product_id}}"></i></button>
                    <div class="modal-body">
                        <!-- Phần trên: Chia thành 2 khối ngang -->
                        <div class="modal-top">
                            <div class="modal-left">
                                <img src="{{$item->product_image}}" alt="{{$item->product_name}}" class="modal-product-image">
                            </div>
                            <div class="modal-right">
                                <h2 class="title-product">{{$item->product_name}}</h2>
                            </div>
                        </div>

                        <!-- Phần giữa: Mô tả ngắn (giá cả) -->
                        <div class="modal-description">
                            <p class="product-price">
                                @if ($item->product_sale != 0)
                                    <span class="old-price" style="color: #000;"> Giá: {{ number_format($item->product_price_sell) }}đ</span>
                                @endif
                                <span class="sale-price" style="color: #000;">
                                    Giá: {{ number_format($item->product_price_sell - ($item->product_price_sell / 100 * $item->product_sale)) }}đ 
                                </span>
                            </p>
                        </div>

                        <!-- Phần dưới: Các option -->
                        <div class="modal-options">
                            <div class="modal-option" style="display: flex; align-items: center;">
                                <label>Size: </label>
                                <div class="modal-size" style="display: flex; gap: 10px;">
                                    <label><input class="type_payment" type="radio" name="size_{{$item->product_id}}" value="M" checked="checked" required> M</label>
                                    <label><input class="type_payment" type="radio" name="size_{{$item->product_id}}" value="L" required> L (+7000)</label>
                                </div>
                            </div>
                            <div class="modal-option" style="display: flex; align-items: center;">
                                <label>Topping:&nbsp;</label>
                                <div class="topping-options" style="display: flex; gap: 10px; flex-wrap: wrap;">
                                    @foreach ($dataTopping as $topping)
                                        <label><input type="checkbox" name="topping[]" value="{{$topping->topping_id}}"> {{$topping->topping_name}}</label>
                                    @endforeach
                                </div>
                            </div>
                            <div class="sin__desc mt-2 quantity-container">
                                <label>Số lượng:</label>&nbsp;
                                <div class="quantity">
                                    <button type="button" class="minus" aria-label="Decrease">&minus;</button>
                                    <input type="number" class="input-box cart_quantity_{{$item->product_id}}" value="1" min="1" max="{{$item->product_amount}}" readonly>
                                    <button type="button" class="plus" aria-label="Increase">&plus;</button>
                                </div>
                            </div>
                            <!-- Nút thêm vào giỏ hàng -->
                            <button class="add-to-cart-with-options" data-id="{{$item->product_id}}" data-item="{{ json_encode($item) }}" type="button">
                                Thêm vào giỏ hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            <div class="vmore mt--40"><a href="/shop">Xem thêm sản phẩm</a></div>
        </div>
    </div>
</section>
<!-- End Product new Area -->
<!-- Start Banner Area -->
@if ($dataBanner)
<section class="htc__category__area">
    <div class="container-fluid" style="padding: 0;">
        <center>
            @if ($dataBanner->count() == 1)
            @foreach ($dataBanner as $banner)
            <a href="{{ $banner->target }}">
                <img src="{{ $banner->image }}" alt="{{ $banner->title }}" style="max-width: 100%; width: 100%;">
            </a>
            @endforeach
            @elseif ($dataBanner->count() == 2)
            <div class="banner-ngang">
                @foreach ($dataBanner as $banner)
                <a href="{{ $banner->target }}" class="banner-item">
                    <img src="{{ $banner->image }}" alt="{{ $banner->title }}" style="max-width: 100%;">
                </a>
                @endforeach
            </div>
            @endif
        </center>
    </div>
</section>
@endif
<!-- End Banner Area -->
<!-- Start Product sale Area -->
<section class="htc__category__area ptb--40">
    <div class="container product-container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">
                        <a>SẢN PHẨM MỚI</a>
                    </h2>
                    <img class="img-title" src="https://www.titanwatches.vn/cdn/shop/files/Edge-Hero-Banner-1920px_x_640px_-_Desktop.png?v=1729497478&width=1900" alt="">
                </div>
            </div>
        </div>
        <div class="htc__product__container">
            <!-- Owl Carousel wrapper -->
            <div class="owl-carousel product__list mt--30 mb--20" style="height: auto;">
                @foreach ($dataProductNews as $item)
                    <div class="item" style="height: 390px;">
                        @include('frontend.libs.product')
                    </div>
                @endforeach
            </div>
            <div class="vmore mt--40"><a href="/shop">Xem thêm sản phẩm</a></div>
        </div>
    </div>
</section>
<!-- End Product sale Area -->
<!-- Start Comment Area -->
<section class="home-testimonial">
    <div class="container-fluid">
        <div class="row d-flex justify-content-center testimonial-pos">
            <div class="col-12 text-center">
                <div class="section__title--2">
                    <h2 class="title__line">
                        <a>Bình luận về sản phẩm</a>
                    </h2>
                </div>
            </div>
        </div>
        <section class="home-testimonial-bottom">
            <div class="container testimonial-inner">
                <div class="owl-carousel product-review-slider">
                    @foreach($dataComment as $item)
                    <div class="item">
                        <div class="tour-item">
                            <div class="tour-desc bg-white" style="height: 200px">
                                <div class="link-name text-center">
                                    {{ $item->user->user_name === "admin" 
                                                    ? collect(['John Doe', 'Jane Smith', 'Alice Johnson', 'Bob Brown'])->random() 
                                                    : $item->user->user_name }}
                                </div>
                                <div class="row justify-content-center pt-2 pb-2">
                                    <div class="col-md-6 col-sm-8 col-12">
                                        <img class="tm-people img-fluid" src="{{ $item->product->product_image }}" alt="">
                                    </div>
                                </div>
                                <div class="tour-text color-grey-3">
                                    &ldquo;{{ $item->comment_customer }}&ldquo;
                                </div>
                                <br>
                                <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                    @for($i = 1; $i <= 5; $i++)
                                        <input type="radio" id="star{{ $item->id }}-{{ $i }}" name="rating_{{ $item->id }}" value="{{ $i }}"
                                        @if($i==$item->comment_rating) checked @endif />
                                        <label for="star{{ $item->id }}-{{ $i }}" title="{{ $i }} star"
                                            style="color: @if($i <= $item->comment_rating) yellow @else gray @endif;"></label>
                                        @endfor
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
    </div>
</section>
<!-- End Comment Area -->
<!-- Start Top Rated Area -->
@if ($dataProductSell != null)
<section class="htc__category__area ptb--40">
    <div class="container product-container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">
                        <a>SẢN PHẨM BÁN CHẠY</a>
                    </h2>
                    <img class="img-title" src="https://dongho24h.com/upload/1/resources/l_1446199005_Seiko-5-sports.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="htc__product__container">
            <!-- Owl Carousel wrapper -->
            <div class="owl-carousel product__list mt--30 mb--20" style="height: auto;">
                @foreach ($dataProductSell as $item)
                    <div class="item" style="height: 390px;">
                        @include('frontend.libs.product')
                    </div>
                @endforeach
            </div>
            <div class="vmore mt--40"><a href="/shop">Xem thêm sản phẩm</a></div>
        </div>
    </div>
</section>
@endif
<!-- End Top Rated Area -->
<!-- Start Blog Area -->
<section class="htc__category__area ptb--40">
    <div class="container product-container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section__title--2 text-center">
                    <h2 class="title__line">
                        <a>TIN TỨC</a>
                    </h2>
                </div>
            </div>
        </div>
        <div class="htc__product__container">
            <!-- Owl Carousel wrapper -->
            <div class="owl-carousel product__list mt--30 mb--20" style="height: auto;">
                @foreach ($dataPost as $item)
                <div class="=product" style="height: 390px">
                    <div class="category">
                        <div class="ht__cat__thumb">
                            <span class="sale-span">New</span>
                            <a href="/blog/{{$item->id}}-{{Str::slug($item->post_title, '-')}}.html">
                                <img style="max-width: 260px; height: 260px" src="{{$item->post_image}}"
                                    alt="{{$item->post_title}}">
                            </a>
                        </div>
                        <div class="fr__product__inner" style="margin-top: -15px">
                            <ul class="fr__pro__prize">
                                <li><a style="font-size: 10px"
                                        href="/shop/blog/{{$item->id}}-{{Str::slug($item->post_title, '-')}}.html">Ngày
                                        đăng:
                                        @php
                                        $old_date = strtotime($item->created_at);
                                        $new_date = date('d/m/Y', $old_date);
                                        echo $new_date
                                        @endphp
                                    </a></li>
                            </ul>
                            <h4><a href="/blog/{{$item->id}}-{{Str::slug($item->post_title, '-')}}.html"><i
                                        style="
                                        max-width: 250px;
                                        height: 40px;
                                        line-height: 20px;
                                        word-break: break-all;
                                        display: -webkit-box;
                                        -webkit-box-orient: vertical;
                                        -moz-box-orient: vertical;
                                        -ms-box-orient: vertical;
                                        box-orient: vertical;
                                        -webkit-line-clamp: 2;
                                        -moz-line-clamp: 2;
                                        -ms-line-clamp: 2;
                                        line-clamp: 2;
                                        overflow: hidden;
                                        ">{{$item->post_title}}</i></a></h4>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<!-- End Blog Area -->
<section class="order-process custom-order-process">
    <div class="container">
        <h2>Quy trình đặt hàng tại TEA SHOP</h2>
        <div class="process-steps">
            <div class="step">
                <div class="step-icon">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <p>Bước 1: Đặt hàng</p>
            </div>
            <div class="step">
                <div class="step-icon">
                    <i class="fa fa-check"></i>
                </div>
                <p>Bước 2: Xác nhận</p>
            </div>
            <div class="step">
                <div class="step-icon">
                    <i class="fa fa-truck"></i>
                </div>
                <p>Bước 3: Vận chuyển</p>
            </div>
            <div class="step">
                <div class="step-icon">
                    <i class="fa fa-envelope"></i>
                </div>
                <p>Bước 4: Giao hàng</p>
            </div>
            <div class="step">
                <div class="step-icon">
                    <i class="fa fa-check-circle"></i>
                </div>
                <p>Bước 5: Hoàn thành</p>
            </div>
        </div>
    </div>
</section>
<section class="order-with-us">
    <div class="info-container">
        <div class="info-column">
            <div class="icon-box order-icon-box">
                <div class="icon">&#x1F6D2;</div>
                <h3 class="order-heading">Đặt Hàng 24/7</h3>
                <p class="order-contact">********8</p>
            </div>
        </div>

        <div class="info-column delivery-column">
            <div class="icon">&#x1F69A;</div>
            <h3 class="delivery-heading">Giao Hàng Tận Nơi
                <br>Nhanh Chóng - An Toàn - Tin Cậy
            </h3>
        </div>

        <div class="info-column">
            <div class="icon-box email-icon-box">
                <div class="icon">&#x1F4E7;</div>
                <h3 class="email-heading">Email</h3>
                <p class="email-contact">*****@gmail.com</p>
            </div>
        </div>
    </div>
    </div>
</section>

@endsection

@section('script')
<script>
    $('.add-to-cart-with-options').click(function() {
        var id = $(this).data('id');
        var type = 'add-to-cart';
        var _token = $('input[name=_token]').val();
        var cart_product = $('.cart_product_' + id).val();
        var cart_price = $('.cart_price_' + id).val();
        var cart_price_sale = $('.cart_price_sale_' + id).val();
        var cart_amount = $('.cart_amount_' + id).val();
        var cart_quantity = parseInt($('.cart_quantity_' + id).val());
        var cart_image = $('.cart_image_' + id).val();
        var cart_brand = $('.cart_brand_' + id).val();
        var modal = $('#cartModal_' + id);

        // Lấy giá trị size trực tiếp từ radio button được chọn
        var size = modal.find('input[name="size_' + id + '"]:checked').val();
        
        // Nếu không có size nào được chọn (trường hợp lỗi), đặt mặc định là "M"
        if (!size) {
            size = 'M';
            modal.find('input[name="size_' + id + '"][value="M"]').prop('checked', true);
        }

        // Lấy các topping đã chọn
        var toppings = [];
        modal.find('input[name="topping[]"]:checked').each(function() {
            toppings.push($(this).val());
        });

        // Gửi Ajax với dữ liệu
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
                size: size, // Thêm size vào dữ liệu gửi đi
                toppings: toppings,
            },
            success: function(data) {
                Swal.fire(data);
                $('.cart-modal-' + id).removeClass('show-modal');
            },
            error: function(xhr, status, error) {
                console.log('Error:', error); // Thêm log để debug nếu cần
            }
        });
    });

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
@endsection