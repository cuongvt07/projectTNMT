@extends('backend.layout')

@section('content')
<div class="content">
    <div class="container-fluid">
      @include('backend.note')
      <form action="admin/categorys" method="POST">
        @csrf
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Thêm loại danh mục</h4>
            </div>
            <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Tên Loại</label>
                      <input type="text" value="{{ old('category_name') }}" name="category_name" class="form-control">
                      @error('category_name')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
                <br>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Mã</label>
                      <input type="text" value="{{ old('category_keyword') }}" name="category_keyword" class="form-control">
                      @error('category_keyword')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Description</label>
                      <input type="text" value="{{ old('category_description') }}" name="category_description" class="form-control">
                      @error('category_description')
                          <span class="text-danger">{{$message}}</span>
                      @enderror
                    </div>
                  </div>
                </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary pull-right">Xác nhận
          </button>
            <a href="/admin/categorys" class="btn btn-primary pull-right">Huỷ</a>
        </div>
      </div>
      </form>
    </div>
  </div>
@endsection
