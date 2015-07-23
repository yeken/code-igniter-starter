<? $this->load->view('front/common/header.php'); ?>

	<div class="section-title">
    	<div class="container">
        	<div class="col-md-12">
		    	<h1 class="title-light-blue"><?=$category['title']; ?></h1>
            </div>
        </div>
    </div>

	<div class="container section-container">
    	
		<div class="col-md-8">

            <? 
			if(count($articles)>0)
			{
				
				if(!$avoid_cover)
				{
				?>
				
					<a href="<?=$articles[0]['detail_url'];?>">
						<img src="<? if(valid_url($articles[0]['image_details'])){ echo $articles[0]['image_details']; }else{  base_url().'assets_fe/img/detalle_foto.jpg'; } ?>" border="0" />
					</a>
					<div class="highlight-title"><a href="<?=$articles[0]['detail_url'];?>"><?=$articles[0]['title']?></a></div>
					
					<div class="clearfix"></div>
					
					<div class="highlight-brief"><?=$articles[0]['brief']?></div>
				
				<div class="clearfix"></div>
				<h2 class="title-blue">ART&Iacute;CULOS DESTACADOS</h2>
				
				<div class="row">
					
					<? 
					if(is_array($articles[1]))
					{
					?>
					<div class="col-lg-6">
						<a href="<?=$articles[1]['detail_url'];?>">
						<img src="<? if(valid_url($articles[1]['image_details'])){ echo $articles[1]['image_details']; }else{  base_url().'assets_fe/img/detalle_foto.jpg'; } ?>" border="0" />
						</a>
						<div class="clearfix"></div>
						<span class="label label-default"><a href="<?=base_url().'categoria/'.$articles[1]['category_id'].'/'.$articles[1]['categories_names']?>"><?=$articles[1]['categories_names']?></a></span>
						<!--<span class="label label-comment">0</span>-->
						<div class="clearfix"></div>
						<div class="date"><?=dateFormat($articles[1]['date_event_start'],'d/m/Y');?></div>
						<div class="title"><a href="<?=$articles[1]['detail_url'];?>"><?=$articles[1]['title'];?></a></div>
						<div class="brief"><?=$articles[1]['brief']?></div>
					</div>
					<? 
					}
					if(is_array($articles[2]))
					{
					?>
					<div class="col-lg-6">
						<a href="<?=$articles[2]['detail_url'];?>">
							<img src="<?=$articles[2]['image_details']?>" border="0" />
						</a>
						<div class="clearfix"></div>
						<span class="label label-default"><a href="<?=base_url().'categoria/'.$articles[2]['category_id'].'/'.$articles[2]['categories_names']?>"><?=$articles[2]['categories_names']?></a></span>
						<!--<span class="label label-comment">0</span>-->
						<div class="clearfix"></div>
						<div class="date"><?=dateFormat($articles[2]['date_event_start'],'d/m/Y');?></div>
						<div class="title"><a href="<?=$articles[2]['detail_url'];?>"><?=$articles[2]['title'];?></a></div>
						<div class="brief"><?=$articles[2]['brief']?></div>
					</div>
					<? 
					}
					?>
				</div>
	
				<? 
				unset($articles[0]);
				unset($articles[1]);
				unset($articles[2]);
				}
			?>

        	<h2 class="title-blue">M&Aacute;S ART&Iacute;CULOS</h2>
            
            <? 
			if(count($articles)>0)
			{
				foreach($articles as $article)
				{
				?>
				<div class="row list-horizontal">
					<div class="col-lg-4">
                    <a href="<?=$article['detail_url'];?>">
						<img src="<?=$article['image_details']?>" border="0" />
                    </a>
					</div>
					<div class="col-lg-8">
						<span class="label label-default"><a href="<?=base_url().'categoria/'.$article['category_id'].'/'.$article['categories_names']?>"><?=$article['categories_names']?></a></span>
						<!--<span class="label label-comment">0</span>-->
						<div class="clearfix"></div>
                    <div class="date"><?=dateFormat($article['date_event_start'],'d/m/Y');?></div>
						<div class="title"><a href="<?=$article['detail_url'];?>"><?=$article['title'];?></a></div>
						<div class="brief"><?=$article['brief'];?></div>
					</div>
				</div>
				<div class="divider"></div>
				<?
				}
			}else{
			?>
				<div class="row list-horizontal">
                	<div class="col-lg-12">
                    	<p>No hay m&aacute;s art&iacute;culos disponibles</p>
                    </div>
                </div>
            <?	
			}
			?>


		<? 
			}
			else
			{
		?>
        <p>No hay art&iacute;culos disponibles</p>
        <?  } 
			echo $this->pagination->create_links();
		?>

			
        </div>
        
        
		<div class="col-md-4 col-right">

	        <? $this->load->view('front/common/sidebar-right.php'); ?>

        </div>
        
    </div>

<? $this->load->view('front/common/footer.php');  ?>