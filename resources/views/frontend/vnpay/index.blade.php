<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đơn hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            margin: auto;
        }
        h3 {
            color: #4CAF50;
            font-size: 24px;
            margin: 0;
        }
        .text-primary {
            color: #007bff;
            font-weight: bold;
            font-size: 18px;
        }
        .bold {
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 10px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .text-center {
            text-align: center;
        }
        .small {
            font-size: 12px;
            color: #6c757d;
        }
        .btn {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-default {
            background-color: #f0f0f0;
            color: #333;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
        }
        .btn:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h3>TEA SHOP</h3>
        </div>
        <hr>
        <form action="{{ $order_pay_type == 2 ? '/payment/online' : '/payment/momo' }}" id="create_form" method="post">
            @csrf
                                                    <input class="form-control"
                                           id="orderInfo"
                                           name="orderInfo"
                                           type="hidden"
                                           value="TEASHOP_{{$dataOrder['order_id']}}">   
<input class="form-control" id="amount"
                                                   name="amount" type="hidden" value="{{number_format($dataOrder['order_total'])}}"/>               		
        <div>
            <p class="text-primary">Thông tin đặt hàng</p>
            <p>{{ $dataOrder['order_shipping'] }}</p>
            <p>Thanh toán: 
                @if ($dataOrder['order_pay_type'] == 2) Thanh toán VNPay @else Thanh toán Momo @endif
            </p>
            <p>Mã đơn hàng: TEASHOP_{{$dataOrder['order_id']}}</p>
        </div>
        <hr>
        <div>
            <p class="text-primary">Sản phẩm</p>
            <table>
                <thead>
                    <tr>
                        <th>Tên SP</th>
                        <th>SL</th>
                        <th>Topping/Size</th>
                        <th>Giá</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($dataOrderdetail as $item)
                    <tr>
                        <td>{{ $item['product_name'] ?? 'SP đã xóa' }}</td>
                        <td>{{ $item['order_detail_quantity'] }}</td>
                        <td>
                            @if (!empty($item['topping_detail']))
                                @foreach ($item['topping_detail'] as $toppingDetail)
                                    {{ $toppingDetail['topping_name'] ?? 'Topping đã xóa' }}
                                    ({{ number_format($toppingDetail['topping_price'] ?? 0) }}đ)
                                    <br>
                                @endforeach
                            @endif
                            @if (!empty($item['size'])) 
                                Size: {{ $item['size'] }} 
                                @if ($item['size'] == 'L') (+{{ number_format(7000) }}đ) @endif
                            @endif
                        </td>
                        <td>{{ number_format($item['order_detail_price']) }}đ</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <hr>
        <div>
            <p>Phí vận chuyển: {{ number_format($dataOrder['shipping_fee']) }}đ</p>
            <p class="bold">Tổng: {{ number_format($dataOrder['order_total']) }}đ</p>
        </div>
        <hr>
        <div class="text-center small">
            <p>Người tiếp nhận: {{ auth()->user()->user_name }}</p>
            <p>Ký tên: ______________</p>
        </div>
    </div>
    <div class="text-center" style="margin-top: 10px;">
        <button type="button" class="btn btn-default" onclick="history.back()">Quay lại</button>
        <button type="submit" class="btn btn-primary" id="btnPopup">Xác nhận thanh toán</button>
    </div>
</form>
</body>
</html>