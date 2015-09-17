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
                        <div class="col-xs-12 col-sm-5">
                          <h2><?= $banner->name?></h2>
                          <h3><?= $banner->brief?></h3>
                          <p><?= $banner->description?></p>
                          <a href="<?= $banner->banner_url?>" class="<?= $banner->button?>">
                            <span class="<?= $banner->button_txt?>">
                            ver más
                            </span>
                          </a>
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
      <div class="owl-carousel">
        <?
          if(is_array($products)){
            foreach ($products as $product) {
              ?>
              <div class="item">
                <div class="box-image">
                  <img src="<?= $product->main_image?>" alt="<?= $product->name?>" />
                  <a href="<?= base_url()?>producto/<?= $product->get_id()?>/<?= urlencode($product->name)?>">
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

    <!-- <section id="latest">
      <h3>últimos artículos</h3>

      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <?
            //if(count($recents_articles)>0){
              //  $i = 0;
                //foreach($recents_articles as $article){
            ?>
            <div class="latest-item">
              <a href="<?//=$article['detail_url'];?>">
                <img class="img-responsive" src="<?// if(valid_url($article['image_list'])){ echo $article['image_list']; }else{  base_url().'assets_fe/img/detalle_foto.jpg'; } ?>">
                <div class="box-info">
                  <span>Blog</span>
                  <span class="<?//=$article['categories_names']?>"><?//=$article['categories_names']?></span>
                  <h4><?//=$article['title'];?></h4>
                </div>
                
              </a>
            </div>
            <?
                //$i++;
                //if($i==3){
                  //break;
                //}
              //}   
            //}
            ?>
          </div>
        </div>
      </div>
    </section> -->    

<? include(dirname(__FILE__)."/common/footer.php") ?>