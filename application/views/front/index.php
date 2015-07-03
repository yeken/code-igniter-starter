<? include(dirname(__FILE__)."/common/header.php") ?>

    <section id="slider">
      <div class="container-fluid" style="padding: 0;">
        <div class="row">
          <div class="col-xs-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="<?=base_url();?>assets_fe/img/slider1.jpg" alt="item1">
                <div class="carousel-caption">
                    <div class="container">
                      <div class="row">
                        <div class="col-xs-12">
                          <h2>Coloración</h2>
                          <h3>Productos de cuidado y tratamiento para el cabello.</h3>
                          <p>Issue brinda los mejores productos para obtener el mejor cuidado para tu cabello.</p>
                          <a href="#">ver más</a>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>

              <div class="item">
                <img src="<?=base_url();?>assets_fe/img/slider1.jpg" alt="item2">
                <div class="carousel-caption">
                    <div class="container">
                      <div class="row">
                        <div class="col-xs-12">
                          <h2>Coloración</h2>
                          <h3>Productos de cuidado y tratamiento para el cabello.</h3>
                          <p>Issue brinda los mejores productos para obtener el mejor cuidado para tu cabello.</p>
                          <a href="#">ver más</a>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>

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
            </div>
          </div>
        </div>
      </div> 


      <!-- <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <ul class="bxslider">
              <li id="slider-1">
                <div class="content">
                  <div class="content-text">
                    <h2>Coloración</h2>
                    <h3>Productos de cuidado y tratamiento para el cabello.</h3>
                    <p>Issue brinda los mejores productos para obtener el mejor cuidado para tu cabello.</p>
                    <button><a href="#">ver más</a></button>
                  </div>
                </div>
              </li>
              <li id="slider-2">
                <div class="content">
                  <div class="content-text">
                    <h2>Tratamientos</h2>
                    <h3>Productos de cuidado y tratamiento para el cabello.</h3>
                    <p>Issue brinda los mejores productos para obtener el mejor cuidado para tu cabello.</p>
                    <button><a href="#">ver más</a></button>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>    
      </div> -->
    </section>
    <section id="nuestros-productos">
      <h3>nuestros productos</h3>
      <div class="owl-carousel">
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/keratin.jpg" alt="Keratin" />
            </div>
            <div class="box-info">
              <h4>Keratin</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/shampoo.jpg" alt="Shampoo Hydrax" />
            </div>
            <div class="box-info">
              <h4>Shampoo Hydrax</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/3d-gloss.jpg" alt="3D Gloss" />
              <a href="#">
                <span>ver detalle</span>
              </a>
            </div>
            <div class="box-info">
              <h4>3D Gloss</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/3d-gloss.jpg" alt="3D Gloss" />
              <a href="#">
                <span>ver detalle</span>
              </a>
            </div>
            <div class="box-info">
              <h4>3D Gloss</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/3d-gloss.jpg" alt="3D Gloss" />
              <a href="#">
                <span>ver detalle</span>
              </a>
            </div>
            <div class="box-info">
              <h4>3D Gloss</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/3d-gloss.jpg" alt="3D Gloss" />
              <a href="#">
                <span>ver detalle</span>
              </a>
            </div>
            <div class="box-info">
              <h4>3D Gloss</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/3d-gloss.jpg" alt="3D Gloss" />
              <a href="#">
                <span>ver detalle</span>
              </a>
            </div>
            <div class="box-info">
              <h4>3D Gloss</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/crazy-colors.jpg" alt="Crazy Colors" />
            </div>
            <div class="box-info">
              <h4>Crazy Colors</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
          <div class="item">
            <div class="box-image">
              <img src="<?=base_url();?>assets_fe/img/shock-de-brillo.jpg" alt="Shock de Brillo" />
            </div>
            <div class="box-info">
              <h4>Shock de Brillo</h4>
              <p>Issue Super Colorpack con keratina</p>
            </div>
          </div>
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