<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Contact Messages</h1>
	</div>
</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th width="10">#</th>
								<th width="150">Name</th>
								<th width="150">Email</th>
								<th width="100">Phone</th>
								<th width="150">Date</th>
								<th>Message</th>
								<th width="100">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT * FROM tbl_contact_message ORDER BY id DESC");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);						
							foreach ($result as $row) {
								$i++;
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td><?php echo $row['name']; ?></td>
									<td><?php echo $row['email']; ?></td>
									<td><?php echo $row['phone']; ?></td>
									<td><?php echo $row['datetime']; ?></td>
									<td><?php echo nl2br($row['message']); ?></td>
									<td>
										<a href="contact-message-delete.php?id=<?php echo $row['id']; ?>" class="btn btn-danger btn-xs" onClick="return confirm('Are you sure you want to delete this message?');">Delete</a>
									</td>
								</tr>
								<?php
							}
							?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>

<?php require_once('footer.php'); ?>