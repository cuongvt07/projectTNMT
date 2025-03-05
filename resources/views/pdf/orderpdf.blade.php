<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đơn hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="/">
    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 8px;
            width: 70mm;
            margin: 0 auto;
            padding: 2px;
            line-height: 1.1;
        }
        .container {
            border: 1px solid #000; /* Thêm khung viền */
            padding: 2mm; /* Khoảng cách bên trong khung */
            width: 100%;
            box-sizing: border-box; /* Đảm bảo padding không làm vượt kích thước */
        }
        .text-center { text-align: center; }
        .text-primary { color: #007bff; }
        .table { width: 100%; border-collapse: collapse; margin-top: 2px; }
        .table th, .table td { border: 1px solid #000; padding: 2px; font-size: 7px; }
        hr { border: 0; border-top: 1px dashed #000; margin: 2px 0; }
        ul { margin: 0; padding: 0; list-style: none; }
        .bold { font-weight: bold; }
        .small { font-size: 6px; }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h3 style="font-size: 10px; margin: 0;">TEA SHOP</h3>
            <p style="margin: 1px 0;">Đơn: {{ date('d/m/Y', strtotime($dataOrder->created_at)) }}</p>
        </div>
        <hr>
        <div>
            <p class="text-primary bold">Thông tin đặt hàng</p>
            <p style="margin: 1px 0;">{{ $dataOrder->order_shipping }}</p>
            <p style="margin: 1px 0;">Thanh toán: 
                @if ($dataOrder->order_pay_type == 1) COD @else Chuyển khoản @endif
            </p>
            <p style="margin: 1px 0;">Trạng thái: {!! \App\Helpers\OrderStatusHelper::Status($dataOrder->order_status) !!}</p>
        </div>
        <hr>
        <div>
            <p class="text-primary bold">Sản phẩm</p>
            <p style="margin: 1px 0;">Ngày: {{ date('d/m/Y', strtotime($dataOrder->order_date)) }}</p>
            <table class="table text-center">
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
                        <td>{{ $item->product->product_name ?? 'SP đã xóa' }}</td>
                        <td>{{ $item->order_detail_quantity }}</td>
                        <td>
                            @if ($item->topping_detail->isNotEmpty())
                                @foreach ($item->topping_detail as $toppingDetail)
                                    {{ $toppingDetail->topping->topping_name ?? 'Topping đã xóa' }}
                                    ({{ number_format($toppingDetail->topping->price ?? 0) }}đ)
                                    <br>
                                @endforeach
                            @endif
                            @if ($item->size) Size: {{ $item->size }} @endif
                        </td>
                        <td>{{ number_format($item->order_detail_price) }}đ</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <hr>
        <div>
            <p style="margin: 1px 0;">Phí vận chuyển: {{ number_format($dataOrder->shipping_fee) }}đ</p>
            <p class="bold" style="margin: 1px 0;">Tổng: {{ number_format($dataOrder->order_total) }}đ</p>
        </div>
        <hr>
        <div class="text-center small">
            <p style="margin: 1px 0;">Người tiếp nhận: {{ auth()->user()->user_name }}</p>
            <p style="margin: 1px 0;">Ký tên: ______________</p>
        </div>
    </div>
</body>
</html>