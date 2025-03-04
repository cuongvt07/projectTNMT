<?php

namespace App\Exports;

use App\Models\CategoryModel;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use stdClass;

class ProductExport implements FromCollection, WithHeadings, WithCustomStartCell, ShouldAutoSize, WithEvents, WithColumnWidths
{
    /**
     * @var null
     */
    private $responses = null;

    public function __construct($responses)
    {
        $this->responses = $responses;
    }

    public function startCell(): string
    {
        return 'A1';
    }

    public function collection(): Collection
    {
        return collect($this->responses);
    }

    public function headings(): array
    {
        return [
            "ID",
            "Tên sản phẩm",
            "Số lượng",
            "danh mục",
            "Thương Hiệu",
            "Giá nhập vào",
            "Giá bán ra",
            "Khuyến mãi",
        ];
    }

    /**
     * columnWidths
     * @return int[]
     */
    public function columnWidths(): array
    {
        return [
            'A' => 5,
            'B' => 30,
            'C' => 30,
            'D' => 30,
            'E' => 30,
            'F' => 30,
            'G' => 30,
            'H' => 30
        ];
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {
                $currentTime = \Carbon\Carbon::now()->format("d-m-Y");
                $last_column = Coordinate::stringFromColumnIndex(8);
                $last_row = 2;
                $style_text_center = [
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER
                    ]
                ];
                $event->sheet->insertNewRowBefore(1, 2);

                $event->sheet->mergeCells(sprintf('A1:%s1', $last_column));
                $event->sheet->mergeCells(sprintf('A2:%s2', $last_column));
                $event->sheet->mergeCells(sprintf('A%d:%s%d', $last_row, $last_column, $last_row));

                $event->sheet->setCellValue('A1', 'Thông kê sản phẩm ROLEX SHOP');
                $event->sheet->setCellValue('A2', "(Ngày: $currentTime)");
                $event->sheet->setCellValue(sprintf('A%d', $last_row), "(Ngày: $currentTime)");
                $event->sheet->getStyle('A1:A2')->applyFromArray($style_text_center);
                $event->sheet->getStyle(sprintf('A%d', $last_row))->applyFromArray($style_text_center);


                $highestRow = $event->sheet->getDelegate()->getHighestRow();
                $highestColumn = $event->sheet->getDelegate()->getHighestColumn();
                $range = 'A2:' . $highestColumn . $highestRow;
                $event->sheet->getDelegate()->getStyle($range)
                    ->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER)
                    ->setVertical(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);

                $event->sheet->getDelegate()->getStyle('A3:H3')
                    ->getAlignment()
                    ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER)
                    ->setVertical(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);

                $event->sheet->getDelegate()->getStyle('A3:H3')->getFill()
                    ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                    ->getStartColor()->setARGB('FF00BFFF');
                $event->sheet->getStyle('A1')->getFont()->setBold(true)->setSize(16);

                $borderStyle = [
                    'borders' => [
                        'allBorders' => [
                            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                            'color' => ['argb' => 'FF000000'],
                        ],
                    ],
                ];
                $event->sheet->getDelegate()->getStyle('A1:Z900')->applyFromArray($borderStyle);
            },
        ];
    }

    /**
     * Map
     * @param $row
     * @return array
     */
    public function map($row): array
    {
        return [
            $row['product_id'],
            $row['product_name'],
            $row['product_amount'],
            $row['category_name'],
            $row['brand_keyword'],
            $row['product_price_buy'],
            $row['product_price_sell'],
            $row['product_sale']
        ];
    }
}
