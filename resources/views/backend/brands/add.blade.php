@extends('backend.layout')

@section('content')
<div class="content">
    <div class="container-fluid">
      @include('backend.note')
      <form action="admin/brands" method="POST">
        @csrf
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Thêm Loại Thương Hiệu</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="bmd-label-floating">Thương Hiệu</label>
                            <input type="text" name="brand_name" class="form-control">
                            @error('brand_name')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Mã</label>
                        <input type="text" name="brand_keyword" class="form-control">
                      @error('brand_keyword')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Mô Tả</label>
                      <input type="text" value="{{ old('brand_description') }}" name="brand_description" class="form-control">
                      @error('brand_description')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
            </div>
          </div>
            <button type="submit" class="btn btn-primary pull-right">Xác nhận
            </button>
          <a href="/admin/brands" class="btn btn-primary pull-right">Huỷ
          </a>
        <div class="clearfix"></div>
        </div>
      </div>
      </form>
    </div>
  </div>
@endsection
