<!-- ======== @Region: #highlighted ======== -->
		<div id="highlighted">
			<div class="container">
				<div class="header">
					<h2 class="page-title">
						<span>Proizvodi na akciji</span> 
                                                <small><?php echo $totalRows;?> proizvoda</small>
					</h2>
				</div>
			</div>
		</div>

		<!-- ======== @Region: #content ======== -->
		<div id="content">
			<div class="container portfolio">
				<ul class="thumbnails row block projects" id="quicksand">
                                    <!-- uz pomoc foreach asocijativni niz $product nam je sad dostupan u t_products_preview -->
					<?php foreach ($productsOnSale as $product) {?> 
					<li class="col-md-3">
						<?php include __DIR__ . '/t_product_preview.php';?>       
					</li>
					<?php }?>
				</ul>
			</div>  
			<div class="text-center">
				<ul class="pagination pagination-centered">
                                    <?php for($i = 1; $i <= $totalPages; $i ++) {?>
                                    <?php if($page != $i) {?>
                                    <li><a href="/sale.php?page=<?php echo $i;?>"><?php echo $i;?></a></li>
                                    <?php } else {?>
					<li class="active"><span><?php echo $i;?></span></li>
                                    <?php }?>
                                    <?php } ?>
				</ul>
			</div>
		</div>