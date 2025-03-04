<div class="container" style="max-width: 700px;margin: 0 auto; border: 1px solid #2b8d06;">
    <div class="header" style="background-color: #2b8d06; color: #fff; padding: 15px;">
        <h3 style="font-size: 20px; text-align: center">ĐẶT HÀNG THÀNH CÔNG TẠI - ROLEX SHOP</h3>
        <h4>Xin Chào {{$data['dataUser']['user_name'}}</h4>
        <p>Cảm ơn bạn đã đặt hàng ở ROLEX SHOP</p>
    </div>

    <div class="box-infor" style="margin: 0 20px;">
        <h3>Thông tin khách hàng</h3>
        <h4>{{$data['shipping']}}
        </h4>
        <h3>Thông tin đơn hàng</h3>
        <p>Mã đơn hàng: #{{$data['dataOrder']['order_id']}}</p>
        <p>Ngày đặt: {{date('d/m/Y',strtotime($data['dataOrder']['created_at']))}}</p>
        <p>Mã mã khuyến mãi: @if ($data['coupon'])
                                {{$data['coupon']['coupon_show']}}
                            @else
                            0
                            @endif
        </p>
        <p>Phí vận chuyển: {{$data['priceShip']}} VND</p>
    </div>
    <div class="box-content" style="margin: 0 20px;">
        <table style="border-collapse: collapse; border: 1px solid #2b8d06 ;width: 100%;">
            <tr style="border: 1px solid #2b8d06">
                <th style="border: 1px solid #2b8d06">Tên sản phẩm</th>
                <th style="border: 1px solid #2b8d06">Số lượng sản phẩm</th>
                <th style="border: 1px solid #2b8d06">Số lượng sản phẩm</th>
                <th style="border: 1px solid #2b8d06">Vòng tay</th>
            </tr>
            @foreach ($data['cart'] as $item)
            <tr style="border: 1px solid #2b8d06; text-align: center;">
                <td style="border: 1px solid #2b8d06">{{$item['cart_product']}}</td>
                <td style="border: 1px solid #2b8d06">{{$item['cart_quantity']}}</td>
                <td style="border: 1px solid #2b8d06">{{number_format($item['cart_price_sale'])}}</td>
                <td style="border: 1px solid #2b8d06">{{$item['wrist_measurement']}}</td>
            </tr>
            @endforeach
        </table>
    </div>
    <br>
    <b style="margin: 0 20px;">Tống {{$data['dataOrder']['order_total']}}</b>
    <br>
    <br>
    <div class="footer" style="font-size: 15px; text-align: center; background-color: #2b8d06; color: #fff; padding: 10px;">
        <p>Đây là tin nhắn tự động từ ROLEX SHOP - Vui lòng không trả lời tin nhắn này</p>
        <p>Mọi thắc mắc về đơn hàng hãy liên hệ đến ROLEX SHOP ở phần liên hệ</p>
        <p>ROLEX SHOP Xin Cảm Ơn Quý Khách Hàng</p>
    </div>
</div>
