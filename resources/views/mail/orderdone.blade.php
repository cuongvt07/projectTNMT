<div class="container" style="max-width: 700px; margin: 0 auto; border: 1px solid #2b8d06; font-family: Arial, sans-serif;">
    <div class="header" style="background-color: #2b8d06; color: #fff; padding: 20px; text-align: center;">
        <h3 style="font-size: 22px; margin: 0;">ĐẶT HÀNG THÀNH CÔNG TẠI TEA SHOP</h3>
        <h4 style="font-size: 18px; margin: 10px 0;">Xin chào {{$data['dataUser']['user_name']}}</h4>
        <p style="font-size: 14px; margin: 0;">Cảm ơn bạn đã tin tưởng và đặt hàng tại TEA SHOP!</p>
    </div>

    <div class="box-info" style="padding: 20px;">
        <h3 style="font-size: 18px; color: #2b8d06; margin-bottom: 10px;">Thông tin khách hàng</h3>
        <p style="font-size: 14px; line-height: 1.6;">{{$data['shipping']}}</p>

        <h3 style="font-size: 18px; color: #2b8d06; margin: 20px 0 10px;">Thông tin đơn hàng</h3>
        <table style="width: 100%; font-size: 14px; line-height: 1.6;">
            <tr>
                <td style="padding: 5px 0;"><strong>Mã đơn hàng:</strong></td>
                <td>#{{$data['dataOrder']['order_id']}}</td>
            </tr>
            <tr>
                <td style="padding: 5px 0;"><strong>Ngày đặt hàng:</strong></td>
                <td>{{date('d/m/Y H:i:s', strtotime($data['dataOrder']['created_at']))}}</td>
            </tr>
            <tr>
                <td style="padding: 5px 0;"><strong>Cập nhật lần cuối:</strong></td>
                <td>{{date('d/m/Y H:i:s', strtotime($data['dataOrder']['updated_at']))}}</td>
            </tr>
            <tr>
                <td style="padding: 5px 0;"><strong>Hình thức thanh toán:</strong></td>
                <td>{{($data['dataOrder']['order_pay_type'] == 1) ? 'Thanh toán khi nhận hàng' : 'Thanh toán trực tuyến'}}</td>
            </tr>
            <tr>
                <td style="padding: 5px 0;"><strong>Trạng thái đơn hàng:</strong></td>
                <td>{{($data['dataOrder']['order_status'] == 1) ? 'Đang xử lý' : 'Khác'}}</td>
            </tr>
        </table>
    </div>

    <div class="box-content" style="padding: 0 20px;">
        <h3 style="font-size: 18px; color: #2b8d06; margin-bottom: 10px;">Chi tiết đơn hàng</h3>
        <table style="width: 100%; border-collapse: collapse; font-size: 14px; text-align: center;">
            <thead>
                <tr style="background-color: #f5f5f5; border: 1px solid #2b8d06;">
                    <th style="padding: 10px; border: 1px solid #2b8d06;">Sản phẩm</th>
                    <th style="padding: 10px; border: 1px solid #2b8d06;">Topping/Size</th>
                    <th style="padding: 10px; border: 1px solid #2b8d06;">Số lượng</th>
                    <th style="padding: 10px; border: 1px solid #2b8d06;">Đơn giá</th>
                    <th style="padding: 10px; border: 1px solid #2b8d06;">Thành tiền</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data['cart'] as $item)
                <tr style="border: 1px solid #2b8d06;">
                    <td style="padding: 10px; border: 1px solid #2b8d06;">{{$item['cart_product']}}</td>
                    <tr style="border: 1px solid #2b8d06;">
                    <td style="padding: 10px; border: 1px solid #2b8d06;">{{$item['cart_product']}}</td>
                    <td>
                            @if (!empty($item['topping']))
                                @foreach ($item['topping'] as $toppingDetail)
                                    {{ $toppingDetail['name'] ?? 'Topping đã xóa' }}
                                    ({{ number_format($toppingDetail['price'] ?? 0) }}VNĐ)
                                    <br>
                                @endforeach
                            @endif
                            @if (!empty($item['size'])) 
                                Size: {{ $item['size'] }} 
                                @if ($item['size'] == 'L') (+{{ number_format(7000) }}VNĐ) @endif
                            @endif
                    </td>                  
                    <td style="padding: 10px; border: 1px solid #2b8d06;">{{$item['cart_quantity']}}</td>
                    <td style="padding: 10px; border: 1px solid #2b8d06;">{{number_format($item['cart_price_sale'])}} VND</td>
                    <td style="padding: 10px; border: 1px solid #2b8d06;">{{number_format($item['cart_price_sale'] * $item['cart_quantity'])}} VND</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="box-summary" style="padding: 20px; text-align: right;">
        <p style="font-size: 14px; margin: 5px 0;"><strong>Phí vận chuyển:</strong> {{number_format($data['priceShip'])}} VND</p>
        <p style="font-size: 14px; margin: 5px 0;"><strong>Mã khuyến mãi:</strong> 
            @if ($data['coupon'])
                {{$data['coupon']['coupon_show']}}
            @else
                Không áp dụng
            @endif
        </p>
        <p style="font-size: 16px; margin: 10px 0; color: #2b8d06;"><strong>Tổng tiền:</strong> {{number_format($data['dataOrder']['order_total'])}} VND</p>
    </div>

    <div class="footer" style="background-color: #2b8d06; color: #fff; padding: 15px; text-align: center; font-size: 13px;">
        <p style="margin: 5px 0;">Đây là email tự động từ TEA SHOP - Vui lòng không trả lời trực tiếp.</p>
        <p style="margin: 5px 0;">Mọi thắc mắc về đơn hàng, vui lòng liên hệ qua phần "Liên hệ" trên website.</p>
        <p style="margin: 5px 0;">TEA SHOP xin chân thành cảm ơn quý khách!</p>
    </div>
</div>