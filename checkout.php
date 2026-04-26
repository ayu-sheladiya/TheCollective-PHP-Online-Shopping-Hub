<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_checkout = $row['banner_checkout'];
}
?>

<?php
$success_message = '';
$error_message = '';

if(isset($_POST['form1']) && isset($_POST['cust_b_name'])) {
    $statement = $pdo->prepare("UPDATE tbl_customer SET 
                            cust_b_name=?, 
                            cust_b_phone=?, 
                            cust_b_country=?, 
                            cust_b_address=?, 
                            cust_b_city=?, 
                            cust_b_state=?, 
                            cust_b_zip=?,
                            cust_s_name=?, 
                            cust_s_phone=?, 
                            cust_s_country=?, 
                            cust_s_address=?, 
                            cust_s_city=?, 
                            cust_s_state=?, 
                            cust_s_zip=?
                            WHERE cust_id=?");
    $statement->execute(array(
                            strip_tags($_POST['cust_b_name']),
                            strip_tags($_POST['cust_b_phone']),
                            strip_tags($_POST['cust_b_country']),
                            strip_tags($_POST['cust_b_address']),
                            strip_tags($_POST['cust_b_city']),
                            strip_tags($_POST['cust_b_state']),
                            strip_tags($_POST['cust_b_zip']),
                            strip_tags($_POST['cust_s_name']),
                            strip_tags($_POST['cust_s_phone']),
                            strip_tags($_POST['cust_s_country']),
                            strip_tags($_POST['cust_s_address']),
                            strip_tags($_POST['cust_s_city']),
                            strip_tags($_POST['cust_s_state']),
                            strip_tags($_POST['cust_s_zip']),
                            $_SESSION['customer']['cust_id']
                        ));

    $success_message = LANG_VALUE_122;

    $_SESSION['customer']['cust_b_name'] = strip_tags($_POST['cust_b_name']);
    $_SESSION['customer']['cust_b_phone'] = strip_tags($_POST['cust_b_phone']);
    $_SESSION['customer']['cust_b_country'] = strip_tags($_POST['cust_b_country']);
    $_SESSION['customer']['cust_b_address'] = strip_tags($_POST['cust_b_address']);
    $_SESSION['customer']['cust_b_city'] = strip_tags($_POST['cust_b_city']);
    $_SESSION['customer']['cust_b_state'] = strip_tags($_POST['cust_b_state']);
    $_SESSION['customer']['cust_b_zip'] = strip_tags($_POST['cust_b_zip']);
    $_SESSION['customer']['cust_s_name'] = strip_tags($_POST['cust_s_name']);
    $_SESSION['customer']['cust_s_phone'] = strip_tags($_POST['cust_s_phone']);
    $_SESSION['customer']['cust_s_country'] = strip_tags($_POST['cust_s_country']);
    $_SESSION['customer']['cust_s_address'] = strip_tags($_POST['cust_s_address']);
    $_SESSION['customer']['cust_s_city'] = strip_tags($_POST['cust_s_city']);
    $_SESSION['customer']['cust_s_state'] = strip_tags($_POST['cust_s_state']);
    $_SESSION['customer']['cust_s_zip'] = strip_tags($_POST['cust_s_zip']);
}

if(!isset($_SESSION['cart_p_id'])) {
    header('location: cart.php');
    exit;
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $banner_checkout; ?>)">
    <div class="overlay"></div>
    <div class="page-banner-inner">
        <h1><?php echo LANG_VALUE_22; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                
                <?php if(!isset($_SESSION['customer'])): ?>
                    <p>
                        <a href="login.php" class="btn btn-md btn-danger"><?php echo LANG_VALUE_160; ?></a>
                    </p>
                <?php else: ?>

                <h3 class="special"><?php echo LANG_VALUE_26; ?></h3>
                <div class="cart">
                    <table class="table table-responsive table-hover table-bordered">
                        <tr>
                            <th><?php echo '#' ?></th>
                            <th><?php echo LANG_VALUE_8; ?></th>
                            <th><?php echo LANG_VALUE_47; ?></th>
                            <th><?php echo LANG_VALUE_157; ?></th>
                            <th><?php echo LANG_VALUE_158; ?></th>
                            <th><?php echo LANG_VALUE_159; ?></th>
                            <th><?php echo LANG_VALUE_55; ?></th>
                            <th class="text-right"><?php echo LANG_VALUE_82; ?></th>
                        </tr>
                         <?php
                        $table_total_price = 0;

                        $i=0;
                        foreach($_SESSION['cart_p_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_color_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_color_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_color_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_color_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_qty'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_qty[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_current_price'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_current_price[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_featured_photo'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_featured_photo[$i] = $value;
                        }
                        ?>
                        <?php for($i=1;$i<=count($arr_cart_p_id);$i++): ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td>
                                <img src="assets/uploads/<?php echo $arr_cart_p_featured_photo[$i]; ?>" alt="">
                            </td>
                            <td><?php echo $arr_cart_p_name[$i]; ?></td>
                            <td><?php echo $arr_cart_size_name[$i]; ?></td>
                            <td><?php echo $arr_cart_color_name[$i]; ?></td>
                            <td><?php echo LANG_VALUE_1; ?><?php echo $arr_cart_p_current_price[$i]; ?></td>
                            <td><?php echo $arr_cart_p_qty[$i]; ?></td>
                            <td class="text-right">
                                <?php
                                $row_total_price = $arr_cart_p_current_price[$i]*$arr_cart_p_qty[$i];
                                $table_total_price = $table_total_price + $row_total_price;
                                ?>
                                <?php echo LANG_VALUE_1; ?><?php echo $row_total_price; ?>
                            </td>
                        </tr>
                        <?php endfor; ?>           
                        <tr>
                            <th colspan="7" class="total-text"><?php echo LANG_VALUE_81; ?></th>
                            <th class="total-amount"><?php echo LANG_VALUE_1; ?><?php echo $table_total_price; ?></th>
                        </tr>
                        <?php
                        $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE country_id=?");
                        $statement->execute(array($_SESSION['customer']['cust_country']));
                        $total = $statement->rowCount();
                        if($total) {
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $shipping_cost = $row['amount'];
                            }
                        } else {
                            $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost_all WHERE sca_id=1");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $shipping_cost = $row['amount'];
                            }
                        }                        
                        ?>
                        <tr>
                            <td colspan="7" class="total-text"><?php echo LANG_VALUE_84; ?></td>
                            <td class="total-amount"><?php echo LANG_VALUE_1; ?><?php echo $shipping_cost; ?></td>
                        </tr>
                        <tr>
                            <th colspan="7" class="total-text"><?php echo LANG_VALUE_82; ?></th>
                            <th class="total-amount">
                                <?php
                                $final_total = $table_total_price+$shipping_cost;
                                ?>
                                <?php echo LANG_VALUE_1; ?><?php echo $final_total; ?>
                            </th>
                        </tr>
                    </table> 
                </div>

                

                <div class="billing-address">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="special"><?php echo LANG_VALUE_161; ?></h3>
                            <table class="table table-responsive table-bordered table-hover table-striped bill-address">
                                <tr>
                                    <td><?php echo LANG_VALUE_102; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_b_name']; ?></p></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_104; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_b_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_106; ?></td>
                                    <td>
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_id=?");
                                        $statement->execute(array($_SESSION['customer']['cust_b_country']));
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            echo $row['country_name'];
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_105; ?></td>
                                    <td>
                                        <?php echo nl2br($_SESSION['customer']['cust_b_address']); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_107; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_b_city']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_108; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_b_state']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_109; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_b_zip']; ?></td>
                                </tr>                                
                            </table>
                        </div>
                        <div class="col-md-6">
                            <h3 class="special"><?php echo LANG_VALUE_162; ?></h3>
                            <table class="table table-responsive table-bordered table-hover table-striped bill-address">
                                <tr>
                                    <td><?php echo LANG_VALUE_102; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_s_name']; ?></p></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_104; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_s_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_106; ?></td>
                                    <td>
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_id=?");
                                        $statement->execute(array($_SESSION['customer']['cust_s_country']));
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            echo $row['country_name'];
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_105; ?></td>
                                    <td>
                                        <?php echo nl2br($_SESSION['customer']['cust_s_address']); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_107; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_s_city']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_108; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_s_state']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo LANG_VALUE_109; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_s_zip']; ?></td>
                                </tr> 
                            </table>
                        </div>
                    </div>                    
                </div>

                

                <div class="cart-buttons">
                    <ul>
                        <li><a href="cart.php" class="btn btn-primary"><?php echo LANG_VALUE_21; ?></a></li>
                    </ul>
                </div>

				<div class="clear"></div>
                <h3 class="special"><?php echo LANG_VALUE_33; ?></h3>
                <div class="row">
                    
                    	<?php
		                $checkout_access = 1;
		                if(
		                    ($_SESSION['customer']['cust_b_name']=='') ||
		                    ($_SESSION['customer']['cust_b_phone']=='') ||
		                    ($_SESSION['customer']['cust_b_country']=='') ||
		                    ($_SESSION['customer']['cust_b_address']=='') ||
		                    ($_SESSION['customer']['cust_b_city']=='') ||
		                    ($_SESSION['customer']['cust_b_state']=='') ||
		                    ($_SESSION['customer']['cust_b_zip']=='') ||
		                    ($_SESSION['customer']['cust_s_name']=='') ||
		                    ($_SESSION['customer']['cust_s_phone']=='') ||
		                    ($_SESSION['customer']['cust_s_country']=='') ||
		                    ($_SESSION['customer']['cust_s_address']=='') ||
		                    ($_SESSION['customer']['cust_s_city']=='') ||
		                    ($_SESSION['customer']['cust_s_state']=='') ||
		                    ($_SESSION['customer']['cust_s_zip']=='')
		                ) {
		                    $checkout_access = 0;
		                }
		                ?>
		                <?php if($checkout_access == 0): ?>
		                	<div class="col-md-12">
				                <div style="color:red;font-size:22px;margin-bottom:50px;">
			                        You must have to fill up all the billing and shipping information from your dashboard panel in order to checkout the order. Please fill up the information going to <a href="customer-billing-shipping-update.php" style="color:red;text-decoration:underline;">this link</a>.
								<div style="margin-top:20px;">
									<form action="" method="post">
										<?php $csrf->echoInputField(); ?>
										<div class="row">
											<div class="col-md-6">
												<h3><?php echo LANG_VALUE_86; ?></h3>
												<div class="form-group">
													<label><?php echo LANG_VALUE_102; ?></label>
													<input type="text" class="form-control" name="cust_b_name" value="<?php echo $_SESSION['customer']['cust_b_name']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_104; ?></label>
													<input type="text" class="form-control" name="cust_b_phone" value="<?php echo $_SESSION['customer']['cust_b_phone']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_106; ?></label>
													<select name="cust_b_country" class="form-control">
														<?php
														$statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
														$statement->execute();
														$result = $statement->fetchAll(PDO::FETCH_ASSOC);
														foreach ($result as $row) {
															?>
															<option value="<?php echo $row['country_id']; ?>" <?php if($row['country_id'] == $_SESSION['customer']['cust_b_country']) {echo 'selected';} ?>><?php echo $row['country_name']; ?></option>
														<?php
														}
														?>
													</select>
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_105; ?></label>
													<textarea name="cust_b_address" class="form-control" rows="4"><?php echo $_SESSION['customer']['cust_b_address']; ?></textarea>
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_107; ?></label>
													<input type="text" class="form-control" name="cust_b_city" value="<?php echo $_SESSION['customer']['cust_b_city']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_108; ?></label>
													<input type="text" class="form-control" name="cust_b_state" value="<?php echo $_SESSION['customer']['cust_b_state']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_109; ?></label>
													<input type="text" class="form-control" name="cust_b_zip" value="<?php echo $_SESSION['customer']['cust_b_zip']; ?>">
												</div>
											</div>
											<div class="col-md-6">
												<h3><?php echo LANG_VALUE_87; ?></h3>
												<div class="form-group">
													<label><?php echo LANG_VALUE_102; ?></label>
													<input type="text" class="form-control" name="cust_s_name" value="<?php echo $_SESSION['customer']['cust_s_name']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_104; ?></label>
													<input type="text" class="form-control" name="cust_s_phone" value="<?php echo $_SESSION['customer']['cust_s_phone']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_106; ?></label>
													<select name="cust_s_country" class="form-control">
														<?php
														$statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
														$statement->execute();
														$result = $statement->fetchAll(PDO::FETCH_ASSOC);
														foreach ($result as $row) {
															?>
															<option value="<?php echo $row['country_id']; ?>" <?php if($row['country_id'] == $_SESSION['customer']['cust_s_country']) {echo 'selected';} ?>><?php echo $row['country_name']; ?></option>
														<?php
														}
														?>
													</select>
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_105; ?></label>
													<textarea name="cust_s_address" class="form-control" rows="4"><?php echo $_SESSION['customer']['cust_s_address']; ?></textarea>
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_107; ?></label>
													<input type="text" class="form-control" name="cust_s_city" value="<?php echo $_SESSION['customer']['cust_s_city']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_108; ?></label>
													<input type="text" class="form-control" name="cust_s_state" value="<?php echo $_SESSION['customer']['cust_s_state']; ?>">
												</div>
												<div class="form-group">
													<label><?php echo LANG_VALUE_109; ?></label>
													<input type="text" class="form-control" name="cust_s_zip" value="<?php echo $_SESSION['customer']['cust_s_zip']; ?>">
												</div>
											</div>
									</div>
									<div class="col-md-12">
										<input type="submit" class="btn btn-primary" value="<?php echo LANG_VALUE_5; ?>" name="form1">
									</div>
								</div>
							</form>
							</div>
			                    </div>
	                    	</div>
	                	<?php else: ?>
		                	<div class="col-md-6 col-md-offset-3">
		                		<div class="payment-section" style="padding: 30px; border: 1px solid #EEEEEE; background: #fff; margin-bottom: 50px;">
                                    <h3 class="special" style="margin-top:0; border-bottom: 1px solid #EEEEEE; padding-bottom: 15px; margin-bottom: 25px;">Payment Details</h3>
                                    
                                    <ul class="nav nav-tabs" role="tablist" style="margin-bottom: 25px;">
                                        <li role="presentation" class="active"><a href="#cc" aria-controls="cc" role="tab" data-toggle="tab" style="border-radius: 0; color:#121212; font-weight: 600; text-transform: uppercase; font-size: 11px; letter-spacing: 1px;">Credit / Debit Card</a></li>
                                        <li role="presentation"><a href="#upi" aria-controls="upi" role="tab" data-toggle="tab" style="border-radius: 0; color:#121212; font-weight: 600; text-transform: uppercase; font-size: 11px; letter-spacing: 1px;">UPI</a></li>
                                        <li role="presentation"><a href="#cod" aria-controls="cod" role="tab" data-toggle="tab" style="border-radius: 0; color:#121212; font-weight: 600; text-transform: uppercase; font-size: 11px; letter-spacing: 1px;">Cash on Delivery</a></li>
                                    </ul>

                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="cc">
                                            <form action="payment/card/init.php" method="post">
                                                <input type="hidden" name="amount" value="<?php echo $final_total; ?>">
                                                <div class="form-group">
                                                    <label>Name on Card</label>
                                                    <input type="text" class="form-control" required placeholder="John Doe">
                                                </div>
                                                <div class="form-group">
                                                    <label>Card Number</label>
                                                    <input type="text" class="form-control" name="card_number" required placeholder="XXXX-XXXX-XXXX-XXXX">
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Month</label>
                                                            <input type="text" class="form-control" name="card_month" required placeholder="MM">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Year</label>
                                                            <input type="text" class="form-control" name="card_year" required placeholder="YYYY">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>CVV</label>
                                                            <input type="password" class="form-control" name="card_cvv" required placeholder="123">
                                                        </div>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary" style="width:100%; margin-top: 15px; padding: 12px; font-size: 13px;">Pay Securely (<?php echo LANG_VALUE_1; ?><?php echo $final_total; ?>)</button>
                                            </form>
                                        </div>

                                        <div role="tabpanel" class="tab-pane" id="upi">
                                            <form action="payment/upi/init.php" method="post">
                                                <input type="hidden" name="amount" value="<?php echo $final_total; ?>">
                                                <div class="form-group">
                                                    <label for="upi_info">UPI Reference / Transaction ID</label>
                                                    <input type="text" class="form-control" name="transaction_info" id="upi_info" placeholder="Enter your successful transaction ID here" required>
                                                </div>
                                                <button type="submit" class="btn btn-primary" style="width:100%; margin-top: 15px; padding: 12px; font-size: 13px;">Verify & Complete Payment</button>
                                            </form>
                                        </div>

                                        <div role="tabpanel" class="tab-pane" id="cod">
                                            <form action="payment/cod/init.php" method="post">
                                                <input type="hidden" name="amount" value="<?php echo $final_total; ?>">
                                                <p style="font-size: 14px; margin-bottom: 20px;">You will pay with cash when your order is delivered to your provided shipping address.</p>
                                                <button type="submit" class="btn btn-primary" style="width:100%; margin-top: 5px; padding: 12px; font-size: 13px;">Place Order (Cash on Delivery)</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
		                    </div>
		                <?php endif; ?>
                        
                </div>
                

                <?php endif; ?>

            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>