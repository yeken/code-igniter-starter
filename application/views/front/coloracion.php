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

    <section id="nuestros-productos">
      <h3>nuestras líneas</h3>
      <div class="owl-carousel">
        <?
          if(is_array($subcategories)){
            foreach ($subcategories as $subcategory) {
              ?>
              <div class="item">
                <div class="box-image">
                  <img src="<?= $subcategory->main_image?>" alt="<?= $subcategory->name?>" />
                  <a href="<?= base_url()?><?= strtolower(str_replace("ó", "o", $subcategory->category))?>">
                    <span>ver detalle</span>
                  </a>
                </div>
                <div class="box-info">
                  <h4><?= $subcategory->name?></h4>
                  <p><?= $subcategory->brief?></p>
                </div>
              </div>
              <?
            }
          }
        ?>
      </div>
    </section>

<? include(dirname(__FILE__)."/common/footer.php") ?>