<?php
include 'config.php';
require('../assets/pdf/fpdf.php');

// $pdf = new FPDF("L","cm","A4");
$pdf = new FPDF("L","cm","A4");

$pdf->SetMargins(2,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',11);
$pdf->Image('../logo/malasngoding.png',1,1,2,2);
$pdf->SetX(4);            
$pdf->MultiCell(19.5,0.5,'KIOS MALASNGODING',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'Telpon : 0038XXXXXXX',0,'L');    
$pdf->SetFont('Arial','B',10);
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'JL. KIOS MALASNGODING',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'website : www.malasngoding.com email : malasngoding@gmail.com',0,'L');
$pdf->Line(1,3.1,28.5,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,28.5,3.2);   
$pdf->SetLineWidth(0);
$pdf->ln(1);
$pdf->SetFont('Arial','B',14);
$pdf->Cell(25.5,0.7,"Laporan Data Barang",0,10,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(5,0.7,"Di cetak pada : ".date("D-d/m/Y"),0,0,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',9);
$pdf->Cell(1, 0.8, 'NO', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Jenis Barang', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Nama Barang', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Ukuran', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Satuan Kecil', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Satuan Besar', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Saldo Awal', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Masuk', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Keluar', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Saldo Akhir', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Exp Date', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Status Pemesanan', 1, 0, 'C');
$pdf->SetFont('Arial','',9);
$no=1;
$query=mysql_query("select * from barang");
while($lihat=mysql_fetch_array($query)){
	$pdf->Cell(1, 0.8, $no , 1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['jenis'],1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['nama'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['ukuran'],1, 0, 'C');
	$pdf->Cell(2, 0.8, $lihat['kecil'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['besar'],1, 0, 'C');
	$pdf->Cell(2, 0.8, $lihat['awal'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['masuk'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['keluar'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['akhir'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['exp'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['status'], 1, 0,'C');

	$no++;
}

$pdf->Output("laporan_buku.pdf","I");

?>

