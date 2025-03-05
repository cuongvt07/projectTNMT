@extends('frontend.layout')

@section('content')
<div class="container" style="margin-top: 80px; margin-bottom: 100px">
    <div class="row">
        @include('frontend.note')
        <div class="col-md-5">
            <p style="color: #0d0d0d; font-size: 4em; margin-bottom: 10px; text-align: center">Đăng Nhập</p>
            <form action="/customer/login" method="POST">
                @csrf
                <div class="form-group">
                    <label for="">Tài Khoản</label>
                    <input type="text" name="user_name" class="form-control">
                    @error('user_name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Mật Khẩu</label>
                    <input type="password" name="user_password" class="form-control">
                    @error('user_password')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <a href="" class="forgot-password">Quên mật khẩu</a>
                </div>
                <div class="form-group row mb-0">
                    <div class=" form-group offset-md-4 text-center">
                        <button type="submit" class="btn">Đăng nhập</button>
                    </div>
                </div>
            </form>
        </div>

        <div id="forgotPasswordPopup" class="modal" style="display:none;">
            <div class="modal-content">
                <span class="close" onclick="closePopup()">&times;</span>
                <h3 style="text-align: center;">Quên mật khẩu</h3>
                <form method="POST" id="forgotPasswordForm">
                    @csrf
                    <div class="form-group">
                        <label for="forgot_email">Nhập email của bạn</label>
                        <input type="email" name="forgot_email" id="forgot_email" class="form-control" required>
                        <span id="emailError" class="text-danger" style="display:none;"></span>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn">Gửi yêu cầu</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-md-2 mt--100 mb--100">
            <center>
                <div class="or" style="text-align: center; width: 50px; height: 50px; background: #c43b68; color: #fff; border-radius: 50%; line-height: 50px">
                    OR
                </div>
            </center>
        </div>

        <div class="col-md-5">
            <p style="color: #0d0d0d; font-size: 4em; margin-bottom: 10px; text-align: center">Đăng ký</p>

            <form action="/customer/register" method="post">
                @csrf
                <div class="form-group">
                    <label for="">Tài Khoản</label>
                    <input type="text" name="user_name" class="form-control">
                    @error('user_name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" name="user_email" class="form-control">
                    @error('user_email')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="password" name="user_password" class="form-control">
                    @error('user_password')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Xác Nhận Password</label>
                    <input type="password" name="user_password_again" class="form-control">
                    @error('user_password_again')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class=" form-group offset-md-4 text-center">
                    <button type="submit" class="btn">Đăng ký</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    document.getElementById('forgotPasswordForm').addEventListener('submit', function(e) {
        e.preventDefault();
        
        fetch('/customer/forgot', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
            },
            body: JSON.stringify({ forgot_email: document.getElementById('forgot_email').value })
        })
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('emailError').style.display = 'block';
                document.getElementById('emailError').textContent = data.error;
            } else {
                Swal.fire(dara.success);
                closePopup();
            }
        });
    });
</script>
@endsection