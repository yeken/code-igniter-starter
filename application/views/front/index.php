<? include(dirname(__FILE__)."/common/header.php") ?>

    <section id="slider">
      <div class="container-fluid" style="padding: 0;">
        <div class="row">
          <div class="col-xs-12">
            <?
            if(is_array($banners)){
            ?>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <?
                $total_banners = count($banners);
                for($i = 1; $i < $total_banners; $i++ ){
                  echo '<li data-target="#myCarousel" data-slide-to="'.$i.'"></li>';
                }
              ?>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <?
                $active = 1;
                foreach ($banners as $banner) {
              ?>
                <div class="item <?= $active ? 'active' : ""?>">
                  <img class="desktop" src="<?= $banner->desktop_image?>" alt="<?= $banner->name?>">
                  <img class="mobile" src="<?= $banner->mobile_image?>" alt="<?= $banner->name?>">
                  <div class="carousel-caption">
                    <div class="container">
                      <div class="row">
                        <div class="col-xs-12">
                          <h2><?= $banner->name?></h2>
                          <h3><?= $banner->brief?></h3>
                          <p><?= $banner->description?></p>
                          <a href="#" class="<?= $banner->button?>">ver más</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              <?
                $active = 0;
                }
              ?>

            </div>

            <!-- Left and right controls -->
              <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div><!-- end myCarousel -->
            <?
            }
            ?>
          </div> <!-- end col-xs -->
        </div> <!-- end row -->
      </div> <!-- end container -->
    </section><!-- end slider -->
    <section id="nuestros-productos">
      <h3>nuestros productos</h3>
      <div>
        <?
          if(is_array($products)){
            vd(count($products));
            foreach ($products as $product) {
              ?>
              <div class="item">
                <div class="box-image">
                  <img src="<?= $product->main_image?>" alt="<?= $product->name?>" />
                  <a href="#">
                    <span>ver detalle</span>
                  </a>
                </div>
                <div class="box-info">
                  <h4><?= $product->name?></h4>
                  <p><?= $product->brief?></p>
                </div>
              </div>
              <?
            }
          }
        ?>
      </div>
    </section>
    <section id="ultimos-articulos">
      <h3>últimos artículos</h3>
      <ul class="row">
        <li class="small" id="blog_post1">
          <a href="#">
            <div class="box_info">
              <span class="blog">Blog</span>
              <span class="purple">Tendencias</span>
            </div>
            <h4>Los colores más utilizados en 2015</h4>
          </a>
        </li>
        <li class="big" id="blog_post2">
          <a href="#">
            <div class="box_info">
              <span class="blog">Blog</span>
              <span class="green">Consejos</span>
            </div>
            <h4>Consejos para cuidar tu cabello en el verano</h4>
          </a>
        </li>
        <li class="small no_margin_r" id="blog_post3">
          <a href="#">
            <div class="box_info">
              <span class="blog">Blog</span>
              <span class="green">Consejos</span>
            </div>
            <h4>10 consejos para una mejor aplicación de shock de brillo</h4>
          </a>
        </li>
      </ul>
    </section>

<? include(dirname(__FILE__)."/common/footer.php") ?>