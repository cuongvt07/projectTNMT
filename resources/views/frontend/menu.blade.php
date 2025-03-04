<header id="htc__header" class="htc__header__area header--one">
    <!-- Start Mainmenu Area -->
    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header banner_img">
        <div class="container">
            <div class="row">
                <div class="menumenu__container clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
                        <div class="logo">
                            <a href="/"><img src="{{$dataLogo->image}}" alt="logo images"></a>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="/">Trang Chủ</a></li>
                                <li class="drop"><a href="/shop">Sản Phẩm</a>
                                    <ul class="dropdown mega_dropdown">
                                        <li><a class="mega__title" href="/shop">Loại Trà Sữa</a>
                                            <ul class="mega__item">
                                                @foreach ($dataCategory->chunk(4) as $chunk)
                                                    <div class="mega__column">
                                                        @foreach ($chunk as $item)
                                                            <li>
                                                                <a href="/shop/category/{{$item->category_id}}-{{ Str::slug($item->category_name, '-') }}.html">
                                                                    {{$item->category_name}}
                                                                </a>
                                                            </li>
                                                        @endforeach
                                                    </div>
                                                @endforeach
                                            </ul>
                                        </li>
                                        <!-- End Single Mega Menu -->
                                    </ul>
                                </li>
                                <li><a href="/contact">Liên Hệ</a></li>
                            </ul>
                        </nav>

                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li class="drop">
                                        <a href="/">Trang Chủ</a>
                                    </li>
                                    <li class="drop">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a href="/shop" class="me-auto">Sản phẩm</a>
                                            <span class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            </span>
                                        </div>
                                        <ul class="dropdown" style="display: none;">
                                            @foreach ($dataCategory as $item)
                                                <li>
                                                    <div class="row">
                                                        <div class="col-xs-9">
                                                            <a href="/shop/category/{{$item->category_id}}-{{ Str::slug($item->category_name, '-') }}.html">
                                                                {{$item->category_name}}
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li class="drop">
                                        <a href="/blog">Bài Viết</a>
                                    </li>
                                    <li>
                                        <a href="/contact">Liên Hệ</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                        <div class="header__right">
                            <div class="header__search search search__open">
                                <a href=""><i class="icon-magnifier icons"></i></a>
                            </div>
                            <div class="header__search">
                                <a href="/customer"><i class="icon-user icons"></i></a>
                            </div>
                            <div class="htc__shopping__cart">
                                <a class="cart__menu" href="javascript:;"><i class="icon-handbag icons"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-area"></div>
        </div>
    </div>
    <!-- End Mainmenu Area -->
</header>
