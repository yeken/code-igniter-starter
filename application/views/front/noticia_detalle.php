<? include(dirname(__FILE__)."/common/header.php"); ?>
	<div class="section-title">
    	<div class="container">
        	<div class="col-md-12 detail-title">
                <!--<span class="label label-comment">0</span>-->
                <span class="label label-default"><a href="<?=base_url().'categoria/'.$article['category_id'].'/'.$article['categories_names']?>"><?=$article['categories_names']?></a></span>
                <div class="clearfix"></div>
                <h1 class="title-light-blue"><?=$article['title'];?></h1>
                <span class="by">by <a href="<?=base_url().'autor/'.$article['creator_name'];?>"><?=$article['creator_name'];?></a></span>&nbsp;<span class="date"><?=dateFormat($article['date_event_start'],'d/m/Y');?></span>
            </div>
        </div>
    </div>

	<div class="container section-container">
    	
        <div class="col-md-12 hightlight">
            <?=$advertisements['article_detail']['code']; ?> 
        </div>

		<div class="col-md-8">
				<div style="line-height:10px; margin-bottom:30px">
				<div style="margin-top:0px;" class="fb-like" data-href="<?=current_url();?>" data-width="120" data-height="35" data-colorscheme="light" data-layout="button_count" data-action="like" data-show-faces="false" data-send="false"></div>&nbsp;&nbsp;<a style="margin-top:30px;" href="https://twitter.com/share" class="twitter-share-button">Tweetar</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
				</div>

				<p><?=$article['brief'];?></p>
				<?
                if($article['show_image_details'])
				{
					?><img src="<? if(valid_url($article['image_details'])){ echo $article['image_details']; }else{ echo base_url().'assets_fe/img/detalle_foto.jpg'; } ?>" border="0" /><?
				}
				?>
                <div class="clearfix"></div>

                <div class="highlight-brief"><br /><?=$article['description']?></div>

				<?
                if(is_array($article['image_gallery']) && count($article['image_gallery']))
                {
                ?>
				<ul class="bxslider">
					<? 
                    foreach($article['image_gallery'] as $banner)
                    {
                    ?>
						<li><img src="<?=$banner?>" /></li>
                    <?
                    }
                    ?>
				</ul>

                <div class="clearfix"></div>
                <? 
				}
				?>

				<? 
                $labels = explode(',', $article['tags']);
                if(count($labels) > 0 && $labels[0] != '')
                {
                ?>
                <hr />
                <div class="clearfix"></div>
                <div class="labels" style="margin-top:5px;">
                	<span>Tags:</span>&nbsp;&nbsp;
                    <? foreach($labels as $label){ ?>
                    <a href="<?=base_url().'tag/'.$label?>"><span class="label label-primary"><?=$label?></span></a>
                    <? } ?>
                </div>
                <hr />
                <? 
                }
				if($user['active'])
				{
                ?>
                    <div class="well" style="background:#FFFFFF; margin-top:20px;">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="<?=base_url().'autor/'.$article['creator_name'];?>">
                                <img src="<?=$user['image_list'];?>" border="0" />
                                </a>
                            </div>
                            <div class="col-md-9">
                                <a href="<?=base_url().'autor/'.$article['creator_name'];?>"><?=$article['creator_name'];?></a><br /><br />
                                <?=$user['bio'];?>
                                <div class="clearfix"></div>
                                <div class="colaborators" style="margin-top:10px;">
                                <?
                                if($user['facebook'])
                                {
                                    ?><a href="<?= prep_url($user['facebook'])?>" class="facebook" target="_blank"></a><?	
                                }
                                if($user['twitter'])
                                {
                                    ?><a href="<?= prep_url($user['twitter'])?>" class="twitter" target="_blank"></a><?	
                                }
                                if($user['instagram'])
                                {
                                    ?><a href="<?= prep_url($user['instagram'])?>" class="instagram" target="_blank"></a><?	
                                }
                                ?>
                                </div>
                                
                            </div>
                        </div>
                      <?
				}
					  ?>  
                </div>

        	<div class="clearfix"></div>
        	<h2 class="title-blue">ART&Iacute;CULOS RELACIONADOS</h2>
            
            <div class="row related-articles">
            	
                <? 
				foreach($related_articles as $article)
				{
				?>
            	
            	<div class="col-lg-3">
	                <a href="<?=$article['detail_url'];?>">
                    <img src="<? if(valid_url($article['image_list'])){ echo $article['image_list']; }else{ echo base_url().'assets_fe/img/listado_foto.jpg'; } ?>" border="0" />
                    </a>
                    <div class="clearfix"></div>
                    <span class="label label-default"><a href="<?=base_url().'categoria/'.$article['category_id'].'/'.$article['categories_names']?>"><?=$article['categories_names']?></a></span>
                    <!--<span class="label label-comment">0</span>-->
                    <div class="clearfix"></div>
                    <div class="date"><?=dateFormat($article['date_event_start'],'d/m/Y');?></div>
                    <div class="title"><a href="<?=$article['detail_url'];?>"><?=$article['title'];?></a></div>
                </div>
                <?
				}
				?>
            
            </div>
			<div class="fb-comments" data-href="<?= current_url()?>" data-numposts="5" data-colorscheme="light"></div>
            
        </div>
        
        
		<div class="col-md-4 col-right">

	        <? $this->load->view('front/common/sidebar-right.php'); ?>

        </div>
        
    </div>

<? $this->load->view('front/common/footer.php');  ?>