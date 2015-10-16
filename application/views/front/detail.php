<? include(dirname(__FILE__)."/common/header.php") ?>

<section class="image-bg-fluid-height" style="background: url('<?= $this->product_category_model->header_image ? $this->product_category_model->header_image : base_url()."assets_fe/img/slider1.jpg" ?>') no-repeat center center scroll;">
    <div class="container">
        <div class="row">
            <div class=" col-xs-12">
                <h1 class="section-heading"><?=ucfirst($this->product_model->name);?></h1>
                <p class="lead section-lead"><?=$this->product_model->brief?></p>
            </div>
        </div>
    </div>
</section>

<section id="detail">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-3">
				<img class="img-responsive" src="<?= $this->product_model->detail_image ? $this->product_model->detail_image : $this->product_model->main_image?>">
			</div>
			<div class="col-xs-12 col-sm-9">
				<p><?= $this->product_model->description?></p>
			</div>
			<div class="col-xs-12 gallery">
				<?
		            if(is_array($this->product_model->galleries['image_gallery']))
		            {
		                foreach($this->product_model->galleries['image_gallery'] as $image_url)
		                {
		                ?>
		                	<a href="<?= $image_url?>" data-lightbox="<?= $this->product_model->name?>" data-title="<?= $this->product_model->name?>">
		                		<div style="background: url('<?= $image_url?>') no-repeat;background-size: cover;background-position: center;">
		                			&nbsp;
		                		</div>
		                	</a>
		            	<?
		                }
		            }
	            ?>
			</div>
		</div>
	</div>
</section>
<?
  if(count($colors_desktop)>0){
?>
<section id="color-chart">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-lg-12">
				<h3>
					Carta de Colores
				</h3>
				<div id="viewer">
					<div class="col-xs-12">
	        	<div class="color-option">
		        	<p>
	        			Seleccione un color de la tabla
		        	</p>
	        	</div>
	        </div>
				</div>
			</div>

			<div class="col-xs-12 colors-chart">
				<ul>
					<?
					foreach($colors_desktop as $color){
					?>
					<li class="color-item">
						<img class="img-responsive color_icon" src="<?= $color->color_icon?>">
						<div class="color-option">
				        	<img class="img-responsive main_image" src="<?= $color->main_image?>">
				        	<p>
			        			<?= $color->name?> <span><?= $color->tone?><sup><?= $color->subtone?></sup></span>
				        	</p>
			        	</div>
					</li>
					<?
					}
					?>
				</ul>
			</div>

			<div class="col-xs-12 accord">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

				  <?
					  $i = 0;
					  foreach($colors_mobile as $category => $category_colors){
					  	$cat = preg_replace('/\s+/', '_', $category);

	 						?>
		 					<div class="panel panel-default">
						    <div class="panel-heading" role="tab" id="headingOne">
						      <h4 class="panel-title">
						        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#<?= $cat?>" aria-expanded="true" aria-controls="collapseOne">
						          &bull; <?= $category?>
						        </a>
						      </h4>
						    </div>
						    <div id="<?= $cat?>" class="panel-collapse <?if($i==0){echo "collapse in";} else{echo "collapse out";};?>" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
	 						<?
	 						foreach($category_colors as $color){
	 						?>
					        <div class="col-xs-1 col-md-1">
					        	<div class="color-option">
						        	<img class="img-responsive color_icon" src="<?= $color->color_icon?>">
						        	<img class="img-responsive main_image" src="<?= $color->main_image?>">
						        	<p>
					        			<?= $color->name?> <span><?= $color->tone?><sup><?= $color->subtone?></sup></span>
						        	</p>
					        	</div>
					        </div>
	 						<?
	 							}
	 						?>
	 						</div>
					    </div>
					  </div>
					<?
	 						$i++;
	 						}
 						} else{

 						}
				  ?>

				  <div class="viewing"></div>
				</div>
			</div>
	</div>
	</div>
</section>

<script type="text/javascript">
	$(document).ready(function(){

	    $('.color-option, .color-item').hover(function(){
	    	$('#viewer').empty();
  			$(this).clone().appendTo('#viewer');
			$('#viewer .color-option').addClass('col-xs-12');
			$('#viewer .color-option .color_icon').css('display', 'none');
    	});
	});
</script>

<? include(dirname(__FILE__)."/common/footer.php") ?>