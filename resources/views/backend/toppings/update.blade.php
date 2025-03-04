@extends('backend.layout')

@section('content')
<div class="content">
    <div class="container-fluid">
      @include('backend.note')
      <form action="admin/brands/{{$data->topping_id}}" method="POST">
        @method('PATCH')
        @csrf
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Sửa Loại Topping</h4>
            </div>
            <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Topping</label>
                        <input type="text" name="topping_name" value="{{$data->topping_name}}" class="form-control">
                      @error('topping_name')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Mã</label>
                        <input type="text" name="price" value="{{$data->price}}" class="form-control">
                      @error('price')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary pull-right">Xác nhận</button>
          <a href="/admin/toppings" class="btn btn-primary pull-right">Huỷ</a>
        <div class="clearfix"></div>
        </div>
      </div>
      </form>
    </div>
  </div>
@endsection
