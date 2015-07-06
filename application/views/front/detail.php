<? include(dirname(__FILE__)."/common/header.php") ?>

<section class="image-bg-fluid-height" style="background: url('<?=base_url();?>assets_fe/img/slider1.jpg') no-repeat center center scroll;">
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
				<img class="img-responsive" src="<?= $this->product_model->main_image?>">
			</div>
			<div class="col-xs-12 col-sm-9">
				<p><?= $this->product_model->description?></p>
			</div>
		</div>
	</div>
</section>

<section id="color-chart">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-lg-12">
				<h3>
					Carta de Colores
				</h3>
				<hr>
				<div id="viewer">
					
				</div>
			</div>

			<div class="col-xs-12">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingOne">
				      <h4 class="panel-title">
				        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          Collapsible Group Item #1
				        </a>
				      </h4>
				    </div>
				    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				      <div class="panel-body">
				        
				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 1 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 2 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

								<div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 3 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

				        <div class="viewing"></div>
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingTwo">
				      <h4 class="panel-title">
				        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          Collapsible Group Item #2
				        </a>
				      </h4>
				    </div>
				    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				      <div class="panel-body">
				        
				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 21 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 22 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

								<div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 23 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingThree">
				      <h4 class="panel-title">
				        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          Collapsible Group Item #3
				        </a>
				      </h4>
				    </div>
				    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				      <div class="panel-body">
				        
				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 31 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

				        <div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 32 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>

								<div class="col-xs-1">
				        	<div class="color-option">
					        	<img class="img-responsive" src="http://placehold.it/100x100">
					        	<p>
				        			Rubio Muy Claro Dorado 33 <span>9<sup>3</sup></span>
					        	</p>
				        	</div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
	</div>
	</div>
</section>

<script type="text/javascript">
	$(document).ready(function(){
	    
	    setTimeout(function() {
        $('#collapseOne > div > div:nth-child(1) > div').trigger('click');
    		},10);

	    $('.color-option').click(function(){
	    	$('#viewer').empty();
  			$(this).clone().appendTo('#viewer');
				$('#viewer .color-option').addClass('col-xs-12');
  			$('.viewing').appendTo($(this));
	    	});
	});
</script>

<? include(dirname(__FILE__)."/common/footer.php") ?>