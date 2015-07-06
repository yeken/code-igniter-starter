<? include(dirname(__FILE__)."/common/header.php") ?>

    <section class="image-bg-fluid-height" style="background: url('<?=$this->category_model->main_image?>') no-repeat center center scroll;">
      <div class="container">
          <div class="row">
              <div class=" col-xs-12">
                  <h1 class="section-heading"><?=ucfirst($this->category_model->name);?></h1>
                  <p class="lead section-lead"><?=$this->category_model->brief?></p>
            <p class="section-paragraph"><?=$this->category_model->description?></p>
              </div>
          </div>
      </div>
    </section>

    <section id="coloracion">
      <div class="container">
        <div class="row" id="coll">
          <div id="opacity-bg"></div>
          <div class="showing"></div>
          <?php
            foreach ($this->category_model->subcategories as $subcategory) {
              ?>
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 product-item" id="product-<?= $subcategory->get_id()?>">
                  <h3>
                      <?= $subcategory->name?>
                  </h3>
                  <p><?= $subcategory->brief?></p>
                  <img class="img-responsive" src="<?= $subcategory->main_image?>" alt="">
              </div>
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 detail-cont" id="product-<?= $subcategory->get_id()?>">
              <div class="unexpose"></div>
              <?
              foreach ($subcategory->products as $product){
                ?>
                <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                    <a href="<?= base_url()?>producto/<?= $product->get_id()?>/<?= urlencode($product->name)?>">
                        <img class="img-responsive" src="<?= $product->main_image?>" alt="">
                        <p>
                          <?= $product->name?>
                        </p>
                    </a>
                </div>
                <?
              }
                ?>
              </div>
                <?
            }
          ?>

        </div><!-- end row -->
      </div><!-- end container -->
    </section>

    <script type="text/javascript">
      $(document).ready(function(){
          
          $('.showing').hide();
          $('.detail-cont').hide();

          $('.unexpose').click(function(){
            $('.product-item').removeClass('exposed');        
            $('.showing').fadeOut(300);
            $('.detail-cont').hide(300);
            $('#opacity-bg').removeClass('active');
          });

          $('.product-item').click(function(){
              var $id = $(this).attr('id');

              $(this).addClass('exposed');

              if($(this).hasClass('exposed')){
                $('.showing').fadeIn(300);
                $('.showing').appendTo($(this));
                $('#'+$id+'.detail-cont').show(300);
                $("#opacity-bg").addClass('active');
              } else{
              };
          });
      });

      //controla el ancho de la ventana
      if ($(window).width() > 768){
          //mueve los detalles al final de #coll
          $(".detail-cont").appendTo("#coll");
      }
    </script>
    
<? include(dirname(__FILE__)."/common/footer.php") ?>