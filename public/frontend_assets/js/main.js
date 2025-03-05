/*-----------------------------------------------------------------------------------

  Template Name: Asbab eCommerce HTML5 Template.
  Template URI: #
  Description: Asbab is a unique website template designed in HTML with a simple & beautiful look. There is an excellent solution for creating clean, wonderful and trending material design corporate, corporate any other purposes websites.
  Author: HasTech
  Author URI: https://themeforest.net/user/hastech/portfolio
  Version: 1.0

-----------------------------------------------------------------------------------*/

/*-------------------------------
[  Table of contents  ]
---------------------------------
    01. jQuery MeanMenu
    02. wow js active
    03. Product  Masonry (width)
    04. Sticky Header
    05. ScrollUp
    06. Search Bar
    07. Shopping Cart Area
    08. Filter Area
    09. Toogle Menu
    10. User Menu
    11. Menu
    12. Menu Dropdown
    13. Overlay Close
    14. Testimonial Image Slider As Nav
    15. Brand Area
    16. Price Slider Active
    17. Accordion
    18. Ship to another
    19. Payment credit card
    20 Slider Activations



/*--------------------------------
[ End table content ]
-----------------------------------*/


(function($) {
    'use strict';


/*-------------------------------------------
    01. jQuery MeanMenu
--------------------------------------------- */

    $('.mobile-menu nav').meanmenu({
        meanMenuContainer: '.mobile-menu-area',
        meanScreenWidth: "991",
        meanRevealPosition: "right",
    });

/*-------------------------------------------
    02. wow js active
--------------------------------------------- */

    new WOW().init();


/*-------------------------------------------
    03. Product  Masonry (width)
--------------------------------------------- */


    $('.dropdown-toggle').on('click', function(e) {
        e.preventDefault(); // Ngăn chặn hành động mặc định
        var $dropdown = $(this).closest('li').find('.dropdown'); // Tìm dropdown tương ứng

        // Kiểm tra trạng thái hiển thị của dropdown
        if ($dropdown.is(':visible')) {
            $dropdown.slideUp(); // Nếu đang hiển thị thì ẩn
        } else {
            $dropdown.slideDown(); // Nếu không hiển thị thì hiện
        }
    });

    $('.htc__product__container').imagesLoaded( function() {

        // filter items on button click
        $('.product__menu').on( 'click', 'button', function() {
          var filterValue = $(this).attr('data-filter');
          $grid.isotope({ filter: filterValue });
        });
        // init Isotope
        var $grid = $('.product__list').isotope({
          itemSelector: '.single__pro',
          percentPosition: true,
          transitionDuration: '0.7s',
          masonry: {
            // use outer width of grid-sizer for columnWidth
            columnWidth: '.single__pro',
          }
        });

    });

    $('.product__menu button').on('click', function(event) {
        $(this).siblings('.is-checked').removeClass('is-checked');
        $(this).addClass('is-checked');
        event.preventDefault();
    });



/*-------------------------------------------
    04. Sticky Header
--------------------------------------------- */
    var win = $(window);
    var sticky_id = $("#sticky-header-with-topbar");
        win.on('scroll',function() {
        var scroll = win.scrollTop();
        if (scroll < 245) {
        sticky_id.removeClass("scroll-header");
        }else{
            sticky_id.addClass("scroll-header");
        }
    });

/*--------------------------
    05. ScrollUp
---------------------------- */
    // $.scrollUp({
    //     scrollText: '<i class="zmdi zmdi-chevron-up"></i>',
    //     easingType: 'linear',
    //     scrollSpeed: 900,
    //     animation: 'fade'
    // });


/*------------------------------------
    06. Search Bar
--------------------------------------*/

    $( '.search__open' ).on( 'click', function () {
        $( 'body' ).toggleClass( 'search__box__show__hide' );
        return false;
    });

    $( '.search__close__btn .search__close__btn_icon' ).on( 'click', function () {
        $( 'body' ).toggleClass( 'search__box__show__hide' );
        return false;
    });


/*------------------------------------
    07. Shopping Cart Area
--------------------------------------*/

    $('.cart__menu').on('click', function(e) {
        e.preventDefault();
        $('.shopping__cart').addClass('shopping__cart__on');
        $('.body__overlay').addClass('is-visible');

    });

    $('.offsetmenu__close__btn').on('click', function(e) {
        e.preventDefault();
        $('.shopping__cart').removeClass('shopping__cart__on');
        $('.body__overlay').removeClass('is-visible');
    });


/*------------------------------------
    08. Filter Area
--------------------------------------*/

    $('.filter__menu').on('click', function(e) {
        e.preventDefault();
        $('.filter__wrap').addClass('filter__menu__on');
        $('.body__overlay').addClass('is-visible');

    });

    $('.filter__menu__close__btn').on('click', function(e) {
        e.preventDefault();
        $('.filter__wrap').removeClass('filter__menu__on');
        $('.body__overlay').removeClass('is-visible');
    });


/*------------------------------------
    09. Toogle Menu
--------------------------------------*/

    $('.toggle__menu').on('click', function(e) {
        e.preventDefault();
        $('.offsetmenu').addClass('offsetmenu__on');
        $('.body__overlay').addClass('is-visible');

    });

    $('.offsetmenu__close__btn').on('click', function(e) {
        e.preventDefault();
        $('.offsetmenu').removeClass('offsetmenu__on');
        $('.body__overlay').removeClass('is-visible');
    });


/*------------------------------------
    10. User Menu
--------------------------------------*/

    $('.user__menu').on('click', function(e) {
        e.preventDefault();
        $('.user__meta').addClass('user__meta__on');
        $('.body__overlay').addClass('is-visible');

    });

    $('.offsetmenu__close__btn').on('click', function(e) {
        e.preventDefault();
        $('.user__meta').removeClass('user__meta__on');
        $('.body__overlay').removeClass('is-visible');
    });



/*------------------------------------
    11. Menu
--------------------------------------*/

    $('.menu__click').on('click', function(e) {
        e.preventDefault();
        $('.off__canvars__wrap').addClass('off__canvars__wrap__on');
        $('.body__overlay').addClass('is-visible');
        $('body').addClass('off__canvars__open');
        $(this).hide();
    });

    $('.menu__close__btn').on('click', function() {
        $('.off__canvars__wrap').removeClass('off__canvars__wrap__on');
        $('.body__overlay').removeClass('is-visible');
        $('body').removeClass('off__canvars__open');
        $('.menu__click').show();
    });


/*------------------------------------
    12. Menu Dropdown
--------------------------------------*/
    function offCanvasMenuDropdown(){

        $('.off__canvars__dropdown-menu').hide();

        $('.off__canvars__dropdown > a').on('click', function(e){
        e.preventDefault();

        $(this).find('i.zmdi').toggleClass('zmdi-chevron-up');
        $(this).siblings('.off__canvars__dropdown-menu').slideToggle();
        return false;
        });
    }
    offCanvasMenuDropdown();


/*------------------------------------
    13. Overlay Close
--------------------------------------*/

    $('.body__overlay').on('click', function() {
        $(this).removeClass('is-visible');
        $('.offsetmenu').removeClass('offsetmenu__on');
        $('.shopping__cart').removeClass('shopping__cart__on');
        $('.filter__wrap').removeClass('filter__menu__on');
        $('.user__meta').removeClass('user__meta__on');
        $('.off__canvars__wrap').removeClass('off__canvars__wrap__on');
        $('body').removeClass('off__canvars__open');
        $('.menu__click').show();
    });

    $('.cart-modal').each(function() {
        $(this).find('input[name="size"][value="M"]').prop('checked', true);
    });

    $('.open-cart-modal').on('click', function() {
        console.log('click modal mở');
        var cart_id = $(this).data('id');
        var modal = $('.cart-modal-' + cart_id);
        // Hiển thị modal
        modal.appendTo('body').addClass('show-modal');
    });

    // Đóng modal khi click vào nút "close-btn"
    $('.close-btn').on('click', function() {
        console.log('click modal đóng');
        var cart_id = $(this).data('id');
        $('.cart-modal-' + cart_id).removeClass('show-modal');
    });

    // Xử lý sự kiện khi click nút "Thêm vào giỏ hàng" trong modal
    $('.add-to-cart-with-options').on('click', function() {
        var token = $('input[name=_token]').val();
        var cart_id = $(this).data('id');
        var type = 'add-to-cart';
        var modal = $('#cartModal_' + cart_id);
        var itemData = $(this).data('item'); // Lấy dữ liệu từ data-item
    
        // Xóa dòng đặt "M" mặc định để tôn trọng lựa chọn của người dùng
        // modal.find('input[name="size"][value="M"]').prop('checked', true);
    
        // Đặt "M" làm mặc định chỉ khi không có radio nào được chọn
        if (!modal.find('input[name="size_' + cart_id + '"]:checked').length) {
            modal.find('input[name="size_' + cart_id + '"][value="M"]').prop('checked', true);
        }
    
        // Lấy các tùy chọn đã chọn
        var size = modal.find('input[name="size_' + cart_id + '"]:checked').val();
        var toppings = [];
        modal.find('input[name="topping[]"]:checked').each(function() {
            toppings.push($(this).val());
        });
    
        // Nếu itemData chứa toàn bộ thông tin sản phẩm, sử dụng trực tiếp
        var productName = itemData.product_name;
        var productPrice = itemData.product_price_sell;
        var productSalePrice = productPrice - (productPrice / 100 * itemData.product_sale);
        var productImage = itemData.product_image;
        var productAmount = itemData.product_amount || 1; // Mặc định là 1 nếu không có
    
        // Gửi dữ liệu tới route /add_to_cart bằng AJAX
        $.ajax({
            url: '/add_to_cart',
            method: 'POST',
            data: {
                _token: token,
                cart_id: cart_id,
                size: size,
                toppings: toppings,
                cart_product: productName,
                cart_price: productPrice,
                cart_price_sale: productSalePrice,
                cart_amount: productAmount,
                cart_image: productImage,
                cart_quantity: 1,
                type: type
            },
            success: function(response) {
                alert('Sản phẩm đã được thêm vào giỏ hàng!');
                modal.fadeOut();
            },
            error: function(xhr) {
                alert('Có lỗi xảy ra khi thêm sản phẩm vào giỏ hàng.');
                console.log(xhr.responseText); // Để debug lỗi nếu cần
            }
        });
    });


/*---------------------------------------------------
    14. Testimonial Image Slider As Nav
---------------------------------------------------*/

    $('.ht__testimonial__activation').slick({
    slidesToShow: 2,
    slidesToScroll: 1,
    swipeToSlide: true,
    dots: false,
    centerMode: true,
    focusOnSelect: true,
    centerPadding: '10px',
    responsive: [
      {
        breakpoint: 600,
        settings: {
          dots: false,
          slidesToShow: 1,
          slidesToScroll: 1,
          centerPadding: '10px',
          }
      },
      {
        breakpoint: 320,
        settings: {
          autoplay: true,
          dots: false,
          slidesToShow: 1,
          slidesToScroll: 1,
          centerMode: false,
          focusOnSelect: false,
          }
      }
    ]
    });


/*-----------------------------------------------
    15. Brand Area
-------------------------------------------------*/
    $('.product-review-slider').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        margin: 15,
        autoplayTimeout: 3000,
        responsive: {
            0: {
                items: 1  // Mobile: hiển thị 1 slide
            },
            768: {
                items: 3  // PC: hiển thị 3 slide
            }
        }
    });

    $('.product__list').owlCarousel({
        loop: true,
        margin: 15,
        autoplay: true,
        autoplayTimeout: 5000,
        autoHeight: true,
        responsive: {
            0: {
                items: 2
            },
            768: {
                items: 5
            }
        },
        nav: true,
        navText: [
            '<',
            '>'
        ]
    });    

    $('.brand__list').owlCarousel({
      loop: true,
      margin:0,
      nav:false,
      autoplay: true,
      autoplayTimeout: 10000,
      items:5,
      dots: false,
      lazyLoad: true,
      responsive: {
        0: {
          items: 2,
        },
        767: {
          items: 4,
        },
        991: {
          items: 5,
        }
      }
    });



/*-------------------------------
    16. Price Slider Active
--------------------------------*/

    $("#slider-range").slider({
          range: true,
          min: 10,
          max: 500,
          values: [110, 400],
          slide: function(event, ui) {
              $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
          }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
      " - $" + $("#slider-range").slider("values", 1));




/*---------------------------------------------------
    17. Accordion
---------------------------------------------------*/

    function emeAccordion(){
        $('.accordion__title')
          .siblings('.accordion__title').removeClass('active')
          .first().addClass('active');
        $('.accordion__body')
          .siblings('.accordion__body').slideUp()
          .first().slideDown();
        $('.accordion').on('click', '.accordion__title', function(){
          $(this).addClass('active').siblings('.accordion__title').removeClass('active');
          $(this).next('.accordion__body').slideDown().siblings('.accordion__body').slideUp();
        });
        };
    emeAccordion();


/*---------------------------------------------------
    18. Ship to another
---------------------------------------------------*/

    function shipToAnother(){
        var trigger = $('.ship-to-another-trigger'),
          container = $('.ship-to-another-content');
        trigger.on('click', function(e){
          e.preventDefault();
          container.slideToggle();
        });
    };
    shipToAnother();



/*---------------------------------------------------
    19. Payment credit card
---------------------------------------------------*/

    function paymentCreditCard(){
        var trigger = $('.paymentinfo-credit-trigger'),
        container = $('.paymentinfo-credit-content');
        trigger.on('click', function(e){
        e.preventDefault();
        container.slideToggle();
    });
    };
    paymentCreditCard();


/*-----------------------------------------------
    20 Slider Activations
-------------------------------------------------*/

    if ($('.slider__activation__wrap').length) {
        $('.slider__activation__wrap').owlCarousel({
        loop: true,
        margin:0,
        nav:true,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        smartSpeed: 1000,
        autoplay: false,
        navText: [ '<i class="icon-arrow-left icons"></i>', '<i class="icon-arrow-right icons"></i>' ],
        autoplayTimeout: 10000,
        items:1,
        dots: false,
        lazyLoad: true,
        responsive: {
          0: {
            items: 1,
          },
          767: {
            items: 1,
          },
          991: {
            items: 1,
          }
        }
        });
    }



})(jQuery);
