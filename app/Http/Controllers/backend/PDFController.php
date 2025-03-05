<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\OrderModel;
use App\Models\OrderdetailModel;
use PDF;

class PDFController extends Controller
{
    public function generatePDF($id)
    {
        // Lấy dữ liệu đơn hàng
        $dataOrder = OrderModel::findOrFail($id);
        $dataOrderdetail = OrderdetailModel::with(['topping_detail.topping', 'product'])
            ->where('order_id', $dataOrder->order_id)
            ->get();

        // Giới hạn số lượng sản phẩm
        $limitedOrderDetails = $dataOrderdetail->take(5); // Có thể tăng lên 8-10 cho A5/A6 nếu cần

        // Dữ liệu truyền vào view
        $data = [
            'dataOrder' => $dataOrder,
            'dataOrderdetail' => $limitedOrderDetails
        ];

        // Tạo PDF với khổ giấy A5 hoặc A6
        $pdf = \PDF::loadView('pdf.orderpdf', $data)
            ->setPaper('a5', 'portrait') // Hoặc 'a6' tùy nhu cầu
            ->setOptions([
                'isHtml5ParserEnabled' => true,
                'isRemoteEnabled' => true,
                'defaultFont' => 'DejaVu Sans',
                'dpi' => 96,
                'margin_top' => 5,    // Điều chỉnh lề nhỏ để tối ưu không gian
                'margin_bottom' => 5,
                'margin_left' => 5,
                'margin_right' => 5,
                'enable_html5' => true,
            ]);

        // Tạo tên file PDF
        $fileName = 'Đơn_hàng_' . $dataOrder->order_id . '_' . date('Ymd') . '.pdf';

        // Tải file PDF về máy
        return $pdf->download($fileName);
    }
}