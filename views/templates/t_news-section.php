<!-- ======== @Region: #highlighted ======== -->
		<div id="highlighted">
			<div class="container">
				<div class="header">
					<h2 class="page-title">
                                            <span>Ukupno vesti za kategoriju <strong><em><?php echo htmlspecialchars($sectionNewsById['title']);?></em></strong>
                                                :<?php echo htmlspecialchars($totalRows); ?></span>
					</h2>
				</div>
			</div>
		</div>
		<div id="content" class="demos">
			<div class="container">
				<div class="row">
					<!--Blog Roll Content-->
					<div class="col-md-8 blog-list">
						<!-- Blog post -->
						
						<?php foreach ($newsPerSection as $sectionNews) {?>
						<div class="media row">
							<div class="col-sm-3">
								<a class="media-photo" href="#">
                                                                    <img src="<?php echo htmlspecialchars($photoFileName['photo']);?>" alt="Title<?php echo $sectionNews['title'];?>" class="media-object img-polaroid" />
								</a>
							</div>
							<div class="col-sm-9">
								<div class="media-body">
									<!-- Meta details -->
									<ul class="list-inline meta text-muted">
										<li><i class="glyphicon glyphicon-calendar"></i> <span class="visible-md-inline visible-lg-inline">Created:</span> <?php echo htmlspecialchars($sectionNews['created_at']);?></li>
										<li>
											<i class="glyphicon glyphicon-tags"></i> <span class="visible-md-inline visible-lg-inline"></span> 
											<a href="#"><?php echo htmlspecialchars($sectionNews['section_title']);?></a>
										</li>
									</ul>
									<h4 class="title media-heading">
                                                                            <a href="/one-news.php?id=<?php echo htmlspecialchars($sectionNews['id']);?>"><?php echo htmlspecialchars($sectionNews['title']);?></a>
									</h4>
									<p><?php echo htmlspecialchars($sectionNews['description']);?></p>
									<ul class="list-inline links">
										<li>
											<a href="/one-news.php?id=<?php echo htmlspecialchars($sectionNews['id']);?>" class="btn btn-default btn-xs">
												<i class="glyphicon glyphicon-circle-arrow-right"></i>
												Read more
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<?php }?>
						
						
						<div class="text-center">
							<ul class="pagination pagination-centered">
                                                           <?php for($i = 1; $i <= $totalPages; $i ++) {?>
                                    <?php 
                                    
                                    $paginationQueryString = http_build_query(array(
                                        'id' => $sectionNewsById['id'],
                                        'page' => $i
                                    ));
                                    ?>
                                    
                                   <?php if($page != $i) {?>
                                    <li>
                                        <a href="/news-section.php?<?php echo $paginationQueryString;?>">
                                            <?php echo $i;?>
                                        </a>
                                    </li>
                                    <?php } else {?>
					<li class="active"><span><?php echo $i;?></span></li>
                                    <?php }?>
                                    <?php } ?>
							</ul>
						</div>
					</div>
					<!--Sidebar-->
					<div class="col-md-4 sidebar sidebar-right">
						<div class="inner">
							<div class="block">
								<span class="btn btn-block btn-info"><i class="fa fa-download"></i> Download Our Press Kit</span>
								<span class="btn btn-block btn-success"><i class="fa fa-envelope-o"></i> Get In Touch</span>
								<span class="btn btn-block btn-warning"><i class="fa fa-rss"></i> Subscribe via RSS feed</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>