@extends('frontend.layout')

@section('content')
<div class="container pt--20">
    @include('frontend.note')
    <div class="row">
        <center>
            <p style="color: #000; font-size: 2em">Thông tin Địa Chỉ Khách Hàng</p>
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
        <div class="col-md-9" style ="background: #92929e; padding: 20px">
            <div class="row">
                <div class="col-md-12">
                    <form>
                        @csrf
                        <div class="form-group">
                            <select name="city_id" id="city_id" class="form-control">
                                <option value="select">Tỉnh/Thành Phố</option>
                                @foreach ($dataCity as $item)
                                <option value="{{$item->city_id}}" @if ($item->city_id == $data->user_city)
                                    {{'selected'}}
                                    @endif>{{$item->city_name}}
                                </option>
                                @endforeach
                            </select>
                            @error('city_id')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                    </form>
                    <form>
                        @csrf
                        <div class="form-group">
                            <select name="district_id" id="district_id" class="form-control">
                                <option value="select">Quận Huyện</option>
                                @if ($data->user_district != null)
                                <option value="{{$data->user_district}}" selected>{{$data->District->district_name}}</option>
                                @endif
                            </select>
                            @error('district_id')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                    </form>
                    <form action="/customer/change_address" method="post">
                        @method('PATCH')
                        @csrf
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input type="text" name="user_phone" value="{{$data->user_phone}}" class="form-control">
                            @error('user_phone')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input type="text" name="user_address" value="{{$data->user_address}}" class="form-control">
                            @error('user_address')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <input type="hidden" name="user_district" value="{{$data->user_district}}">
                        <input type="hidden" name="user_city" value="{{$data->user_city}}">
                        <button class="btn" type="submit">Đổi thông tin địa chỉ</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $('#city_id').change(function() {
        var _token = $('input[name=_token]').val()
        var city_id = $('#city_id').val()
        var html = '<option value="select">Quận Huyện</option>';
        $.ajax({
            url: 'get_district_checkout',
            method: 'POST',
            data: {
                _token: _token,
                city_id: city_id,
            },
            success: function(data) {
                data.forEach(item => {
                    html += `<option value="${item.district_id}">${item.district_name}</option>`
                });
                $('#district_id').html(html)
                $('input[name=user_city]').val(city_id)

                $('#district_id').change(function() {
                    var district_id = $('#district_id').val()
                    $('input[name=user_district]').val(district_id)
                })
            }
        })
    })
</script>
@endsection