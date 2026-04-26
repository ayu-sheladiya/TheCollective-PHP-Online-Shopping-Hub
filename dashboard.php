<?php require_once('header.php'); ?>

<?php
// Check if the customer is logged in or not
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'logout.php');
    exit;
} else {
    // If customer is logged in, but admin make him inactive, then force logout this user.
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=? AND cust_status=?");
    $statement->execute(array($_SESSION['customer']['cust_id'],0));
    $total = $statement->rowCount();
    if($total) {
        header('location: '.BASE_URL.'logout.php');
        exit;
    }
}

// Fetch customer profile data
$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=?");
$statement->execute(array($_SESSION['customer']['cust_id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $cust_name = $row['cust_name'];
    $cust_email = $row['cust_email'];
    $cust_phone = $row['cust_phone'];
    $cust_address = $row['cust_address'];
    $cust_city = $row['cust_city'];
    $cust_state = $row['cust_state'];
    $cust_zip = $row['cust_zip'];
    $cust_country = $row['cust_country'];
    $cust_b_name = $row['cust_b_name'];
    $cust_b_cname = $row['cust_b_cname'];
    $cust_b_phone = $row['cust_b_phone'];
    $cust_b_country = $row['cust_b_country'];
    $cust_b_address = $row['cust_b_address'];
    $cust_b_city = $row['cust_b_city'];
    $cust_b_state = $row['cust_b_state'];
    $cust_b_zip = $row['cust_b_zip'];
    $cust_s_name = $row['cust_s_name'];
    $cust_s_cname = $row['cust_s_cname'];
    $cust_s_phone = $row['cust_s_phone'];
    $cust_s_country = $row['cust_s_country'];
    $cust_s_address = $row['cust_s_address'];
    $cust_s_city = $row['cust_s_city'];
    $cust_s_state = $row['cust_s_state'];
    $cust_s_zip = $row['cust_s_zip'];
    $cust_datetime = $row['cust_datetime'];
}
?>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12"> 
                <?php require_once('customer-sidebar.php'); ?>
            </div>
            <div class="col-md-12">
                <div class="user-content">
                    <h3 class="text-center">
                        My Profile
                    </h3>
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Personal Information</h4>
                            <table class="table table-bordered">
                                <tr>
                                    <td><b>Name:</b></td>
                                    <td><?php echo $cust_name; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Email:</b></td>
                                    <td><?php echo $cust_email; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Phone:</b></td>
                                    <td><?php echo $cust_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Address:</b></td>
                                    <td><?php echo $cust_address; ?></td>
                                </tr>
                                <tr>
                                    <td><b>City:</b></td>
                                    <td><?php echo $cust_city; ?></td>
                                </tr>
                                <tr>
                                    <td><b>State:</b></td>
                                    <td><?php echo $cust_state; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Zip:</b></td>
                                    <td><?php echo $cust_zip; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Country:</b></td>
                                    <td><?php echo $cust_country; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Registration Date:</b></td>
                                    <td><?php echo $cust_datetime; ?></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <h4>Billing Address</h4>
                            <table class="table table-bordered">
                                <tr>
                                    <td><b>Name:</b></td>
                                    <td><?php echo $cust_b_name; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Phone:</b></td>
                                    <td><?php echo $cust_b_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Address:</b></td>
                                    <td><?php echo $cust_b_address; ?></td>
                                </tr>
                                <tr>
                                    <td><b>City:</b></td>
                                    <td><?php echo $cust_b_city; ?></td>
                                </tr>
                                <tr>
                                    <td><b>State:</b></td>
                                    <td><?php echo $cust_b_state; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Zip:</b></td>
                                    <td><?php echo $cust_b_zip; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Country:</b></td>
                                    <td><?php echo $cust_b_country; ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Shipping Address</h4>
                            <table class="table table-bordered">
                                <tr>
                                    <td><b>Name:</b></td>
                                    <td><?php echo $cust_s_name; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Phone:</b></td>
                                    <td><?php echo $cust_s_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Address:</b></td>
                                    <td><?php echo $cust_s_address; ?></td>
                                </tr>
                                <tr>
                                    <td><b>City:</b></td>
                                    <td><?php echo $cust_s_city; ?></td>
                                </tr>
                                <tr>
                                    <td><b>State:</b></td>
                                    <td><?php echo $cust_s_state; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Zip:</b></td>
                                    <td><?php echo $cust_s_zip; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Country:</b></td>
                                    <td><?php echo $cust_s_country; ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>