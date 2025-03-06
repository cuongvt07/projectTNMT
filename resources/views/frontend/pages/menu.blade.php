@extends('frontend.layout')

@section('content')
<section class="htc__contact__area">
    @include('frontend.note')
    <div class="container">
        <div class="row">
            <div class="contact-form-wrap">
                <div class="col-xs-12">
                    @foreach($dataMenu as $menu)
                        <img src="{{$menu->image}}" alt="" style=" width: 100%; height: 100%;">
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endsection