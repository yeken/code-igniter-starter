<? $this->load->view('front/common/header.php'); ?>		

	<div class="container container-home">
    	<div class="col-md-8">
            <? 
			if(count($recents_articles)>0)
			{
				?>
				<h2 class="title-blue" style="text-transform:uppercase">Artículos recientes</h2>
				<div class="row">
				<?
				$i = 0;		
				foreach($recents_articles as $article)
				{
					$i++;
				?>
					<div class="col-lg-6" style="margin-bottom:20px;">
						<a href="<?=$article['detail_url'];?>">
                        <img src="<? if(valid_url($article['image_list'])){ echo $article['image_list']; }else{  base_url().'assets_fe/img/detalle_foto.jpg'; } ?>" border="0" />
                        </a>
						<div class="clearfix"></div>
						<span class="label label-default"><a href="<?=base_url().'categoria/'.$article['category_id'].'/'.$article['categories_names']?>"><?=$article['categories_names']?></a></span>
						<!--<span class="label label-comment">0</span>-->
						<div class="clearfix"></div>
						<div class="date"><?=dateFormat($article['date_event_start'],'d/m/Y');?></div>
						<div class="title"><a href="<?=$article['detail_url'];?>"><?=$article['title'];?></a></div>
						<div class="brief"><?=$article['brief'];?></div>
					</div>
					<?
						if(($i % 2 == 0))
						{
							echo "<div class='clearfix'></div>";
						}
					}
					?>
				</div>
				<? 
			}
			else{
			?>
			<!--<p>No hay articulos recientes</p>-->
			<? 
			}
			?>
        	<h2 class="title-blue">M&Aacute;S ART&Iacute;CULOS</h2>
            <?
			
			if(count($more_articles)>0)
			{
			
				foreach($more_articles as $article)
				{
				?>
				<div class="row list-horizontal">
					<div class="col-lg-4">
					<a href="<?=$article['detail_url'];?>">
	                    <img src="<? if(valid_url($article['image_list'])){ echo $article['image_list']; }else{  base_url().'assets_fe/img/listado_foto.jpg'; } ?>" border="0" />
                    </a>
					</div>
					<div class="col-lg-8">
						<span class="label label-default">
							<a href="<?=base_url().'categoria/'.$article['category_id'].'/'.$article['categories_names']?>"><?=$article['categories_names']?></a>
						</span>
						<!--<span class="label label-comment">0</span>-->
						<div class="clearfix"></div>
						<div class="title"><a href="<?=$article['detail_url'];?>"><?=$article['title'];?></a></div>
						<div class="brief"><?=$article['brief']?></div>
					</div>
				</div>
				<div class="divider"></div>
				<?
				}
			}else{
			?>
            <p></p>
            <?	
			}
			echo $this->pagination->create_links();
			?>
            
        </div>
        <div class="col-md-4 col-right">
	        <? $this->load->view('front/common/sidebar-right.php'); ?>
        </div>
        
    </div>

<? $this->load->view('front/common/footer.php');  ?>