<?php
ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
// Getting all language variables into array as global variable
$i=1;
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	define('LANG_VALUE_'.$i,$row['lang_value']);
	$i++;
}

if(!isset($_REQUEST['payment_id'])) {
    header('location: customer-order.php');
    exit;
}

$payment_id = $_REQUEST['payment_id'];

// Check if the payment belongs to the logged in customer
if(!isset($_SESSION['customer'])) {
    header('location: logout.php');
    exit;
}

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_id=? AND customer_email=?");
$statement->execute(array($payment_id, $_SESSION['customer']['cust_email']));
$total = $statement->rowCount();
if(!$total) {
    header('location: customer-order.php');
    exit;
}

$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $payment_date = $row['payment_date'];
    $paid_amount = $row['paid_amount'];
    $payment_status = $row['payment_status'];
    $payment_method = $row['payment_method'];
    $customer_name = $row['customer_name'];
    $customer_email = $row['customer_email'];
}

// Get order details
$statement = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
$statement->execute(array($payment_id));
$result1 = $statement->fetchAll(PDO::FETCH_ASSOC);

// Include FPDF
require('assets/fpdf/fpdf.php');

class PDF extends FPDF
{
    function Header()
    {
        $this->SetFont('Arial','B',15);
        $this->Cell(80);
        $this->Cell(30,10,'Invoice',0,0,'C');
        $this->Ln(20);
    }

    function Footer()
    {
        $this->SetY(-15);
        $this->SetFont('Arial','I',8);
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);

$pdf->Cell(0,10,'Customer Name: '.$customer_name,0,1);
$pdf->Cell(0,10,'Customer Email: '.$customer_email,0,1);
$pdf->Cell(0,10,'Payment Date: '.$payment_date,0,1);
$pdf->Cell(0,10,'Payment ID: '.$payment_id,0,1);
$pdf->Cell(0,10,'Payment Method: '.$payment_method,0,1);
$pdf->Cell(0,10,'Payment Status: '.$payment_status,0,1);

$payment_info = '';
if($payment_method == 'UPI' || $payment_method == 'Bank Deposit') {
    $pstmt = $pdo->prepare("SELECT bank_transaction_info FROM tbl_payment WHERE payment_id=?");
    $pstmt->execute(array($payment_id));
    $pinfo = $pstmt->fetch(PDO::FETCH_ASSOC);
    if($pinfo && !empty($pinfo['bank_transaction_info'])) {
        $payment_info = $pinfo['bank_transaction_info'];
    }
}
if(!empty($payment_info)) {
    $pdf->Cell(0,10,'Transaction Info: '.$payment_info,0,1);
}

$pdf->Cell(0,10,'Total Amount: Rs. '.$paid_amount,0,1);
$pdf->Ln(10);

if(empty($result1)) {
    $pdf->Cell(0,10,'No product details available for this order.',0,1);
} else {
    // Table headers
    $pdf->SetFont('Arial','B',12);
    $pdf->Cell(80,10,'Product Name',1);
    $pdf->Cell(20,10,'Size',1);
    $pdf->Cell(20,10,'Color',1);
    $pdf->Cell(15,10,'Qty',1);
    $pdf->Cell(25,10,'Unit Price',1);
    $pdf->Cell(25,10,'Total',1);
    $pdf->Ln();

    // Product rows
    $pdf->SetFont('Arial','',11);
    $grand_total = 0;
    foreach ($result1 as $row1) {
        $line_total = $row1['quantity'] * $row1['unit_price'];
        $grand_total += $line_total;

        // Truncate too-long product names with ellipsis if needed
        $product_name = $row1['product_name'];
        if(strlen($product_name) > 45) {
            $product_name = substr($product_name, 0, 42) . '...';
        }

        $pdf->Cell(80,10,$product_name,1);
        $pdf->Cell(20,10,$row1['size'],1);
        $pdf->Cell(20,10,$row1['color'],1);
        $pdf->Cell(15,10,$row1['quantity'],1);
        $pdf->Cell(25,10,'Rs. '.$row1['unit_price'],1);
        $pdf->Cell(25,10,'Rs. '.$line_total,1);
        $pdf->Ln();
    }

    $pdf->SetFont('Arial','B',12);
    $pdf->Cell(155,10,'Subtotal',1);
    $pdf->Cell(30,10,'Rs. '.$grand_total,1);
    $pdf->Ln();

    $pdf->Cell(155,10,'Paid Amount',1);
    $pdf->Cell(30,10,'Rs. '.$paid_amount,1);
    $pdf->Ln();
}

if(isset($_REQUEST['download'])) {
    $pdf->Output('D', 'invoice_'.$payment_id.'.pdf');
} else {
    $pdf->Output();
}
?>