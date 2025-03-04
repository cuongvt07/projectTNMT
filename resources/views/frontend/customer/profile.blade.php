@extends('frontend.layout')

@section('content')
<div class="container pt--20" style="background: #c0c5cc;">
    @include('frontend.note')
    <div class="row">
        <center>
            <p style="color: #000; font-size: 2em">Thông tin Khách Hàng</p>
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
                <div class="col-md-12">
                    @if ($data->provider == null)
                    <form action="/customer/change_profile" method="post">
                        @method('PATCH')
                        @csrf
                        <div class="form-group">
                            <label>Họ tên</label>
                            <input type="text" name="user_name" value="{{$data->user_name}}" class="form-control">
                            @error('user_name')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="emai" name="user_emai" value="{{$data->user_email}}" class="form-control" readonly>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" name="user_password_old" class="form-control">
                            @error('user_password_old')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu mới</label>
                            <input type="password" name="user_password" class="form-control">
                            @error('user_password')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Xác nhận mật khẩu mới</label>
                            <input type="password" name="user_password_again" class="form-control">
                            @error('user_password_again')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <button class="btn" type="submit">Đổi thông tin</button>
                    </form>
                    @else
                    <form action="/customer/change_profile_more" method="post">
                        @method('PATCH')
                        @csrf
                        <div class="form-group">
                            <label>Họ tên</label>
                            <input type="text" name="user_name" value="{{$data->user_name}}" class="form-control">
                            @error('user_name')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="emai" name="user_emai" value="{{$data->user_email}}" class="form-control" readonly>
                        </div>

                        <button class="btn" type="submit">Đổi thông tin</button>
                    </form>
                    @endif

                </div>
            </div>
        </div>
    </div>
</div>
@endsection