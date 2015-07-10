<? include(dirname(__FILE__)."/common/header.php") ?>

    <section class="image-bg-fluid-height" style="background: url('<?=base_url();?>assets_fe/img/slider1.jpg') no-repeat center center scroll;">
        <div class="container">
            <div class="row">
                <div class=" col-xs-12">
                    <h1 class="section-heading"><?=ucfirst($title);?></h1>
                </div>
            </div>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-11 col-lg-offset-1">
                    <p>
                    <?= $section_content?>
                    </p>
               </div>
            </div>
        </div>
    </section>

<? include(dirname(__FILE__)."/common/footer.php") ?>