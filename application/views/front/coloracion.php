<? include(dirname(__FILE__)."/common/header.php") ?>

      
    <!-- Full Width Image Header -->
    <!-- Image backgrounds are set within the styles.css file. -->
    <section class="image-bg-fluid-height">
      <div class="container-fluid">
        <div class="row">
          <div class=" col-xs-12 col-lg-6 col-lg-offset-2">
            <h1 class="section-heading">Section Heading</h1>
            <p class="lead section-lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p class="section-paragraph">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, suscipit, rerum quos facilis repellat architecto commodi officia atque nemo facere eum non illo voluptatem quae delectus odit vel itaque amet.</p>
          </div>
        </div>
      </div>
    </section>
    
    <section id="coloracion">
      <div class="container">
        <div class="row" id="coll">
          <div id="opacity-bg"></div>
          <div class="showing"></div>
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 product-item" id="product-1">
              <h3>
                  Project Name
              </h3>
              <p>Lorem ipsum dolor sit amet, .</p>
              <img class="img-responsive collapse_bg" src="http://placehold.it/345x345" alt="">
          </div>
            
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 detail-cont" id="product-1">

            <div class="unexpose"></div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name 1
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>
          </div><!-- end product-detail -->

          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 product-item" id="product-2">
              <h3>
                  Project Name
              </h3>
              <p>Lorem ipsum dolor sit amet, .</p>
              <img class="img-responsive collapse_bg" src="http://placehold.it/345x345" alt="">
          </div>
            
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 detail-cont" id="product-2">

            <div class="unexpose"></div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name 2
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>
          </div><!-- end product-detail -->
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 product-item" id="product-3">
              <h3>
                  Project Name
              </h3>
              <p>Lorem ipsum dolor sit amet, .</p>
              <img class="img-responsive collapse_bg" src="http://placehold.it/345x345" alt="">
          </div>
            
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 detail-cont" id="product-3">

            <div class="unexpose"></div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name 3
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 product-detail">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/260x260" alt="">
                    <p>
                      Product Name
                    </p>
                </a>
            </div>
          </div><!-- end product-detail -->

        </div><!-- end row -->
      </div><!-- end container -->
    </section>

    <script type="text/javascript">
      $(document).ready(function(){
          
          $('.showing').hide();
          $('.detail-cont').hide();

          $('.unexpose').click(function(){
            $('.product-item').removeClass('exposed');        
            $('.showing').hide(300);
            $('.detail-cont').hide(300);
            $('#opacity-bg').removeClass('active');
          });

          $('.product-item').click(function(){
              var $id = $(this).attr('id');

              $(this).addClass('exposed');

              if($(this).hasClass('exposed')){
                $('.showing').show(300);
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