@extends('layout.index')
@section('title','OrderHistory')
@section('content')
<section class="profile">
    <div class="container">
    <table class="table">
    <thead>
      <tr>
        <th>Mã đơn hàng</th>
        <th>Trạng Thái</th>
        <th>TỔng Tiền</th>
        <th>Ngày đặt hàng</th>
        <th>CHi tiết</th>
      </tr>
    </thead>
    <tbody> 
    @foreach($list as $value)    
    <tr class="@if($value->payment == 'đang xử lý') success  @else warning @endif">
        <td>{{$value->id}}</td>
        <td>{{$value->payment}}</td>
        <td>{{$value->total}}</td>
        <td>{{$value->created_at}}</td>
        <td><a href="page/profileDeital/{{$value->id}}">Xem Chi tiết</a></td>
    </tr>
      @endforeach
    </tbody>
  </table>
    </div>
</section>
@endsection