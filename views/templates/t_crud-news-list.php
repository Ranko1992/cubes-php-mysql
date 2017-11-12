		<!-- ======== @Region: #highlighted ======== -->
		<div id="highlighted">
			<div class="container">
				<div class="header">
					<h2 class="page-title">
						<span>CRUD - News</span>
					</h2>
				</div>
			</div>
		</div>

		<!-- ======== @Region: #content ======== -->
		<div id="content">
			<div class="container portfolio">
				<!--Portfolio feature item-->
				<div class="row">
					<div class="col-md-12">
						<h2>
							CRUD News - List
							<a href="/crud-news-insert.php" class="pull-right btn btn-success">
								<i class="fa fa-plus-circle"></i>
								Add news
							</a>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">		
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Section</th>
									<th>Title</th>
									<th>Created At</th>
									<th class="actions text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($news as $new) {?>


     
								<tr>
									<td>
                                                                            #<?php echo htmlspecialchars($new['id']);?>
									</td>
									<td>
										<?php echo htmlspecialchars($new['section_title']);?>
									</td>
									<td>
										<?php echo htmlspecialchars($new['description']);?>
									</td>
									<td>
										<?php echo htmlspecialchars($new['created_at']);?>
									</td>
									<td class="text-center">
										<div class="btn-group">
											<a href="/crud-news-edit.php" class="btn btn-default"><i class="fa fa-pencil"></i></a>
											<a href="/crud-news-delete.php" class="btn btn-default"><i class="fa fa-trash"></i></a>
										</div>
									</td>
								</tr>
								<?php }?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>