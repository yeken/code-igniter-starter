<? include(dirname(__FILE__)."/common/header.php") ?>
    <?
    if ($this->data['section'] == 'text_legal') {
        ?>
            <section class="image-bg-fluid-height desktop-header" style="background: url('<?= $this->configuration_model->legal_desktop ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>

            <section class="image-bg-fluid-height mobile-header" style="background: url('<?= $this->configuration_model->legal_mobile ?>') no-repeat center center scroll;">    
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>
        <?    
    } elseif ($this->data['section'] == 'text_privacy_policy') {
        ?>
            <section class="image-bg-fluid-height desktop-header" style="background: url('<?= $this->configuration_model->privacidad_desktop ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>

            <section class="image-bg-fluid-height mobile-header" style="background: url('<?= $this->configuration_model->privacidad_mobile ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>
        <?
    } elseif ($this->data['section'] == 'text_consumer_rights') {
        ?>
            <section class="image-bg-fluid-height desktop-header" style="background: url('<?= $this->configuration_model->derechos_desktop ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>

            <section class="image-bg-fluid-height mobile-header" style="background: url('<?= $this->configuration_model->derechos_mobile ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>
        <?
    } elseif ($this->data['section'] == 'nosotros') {
        ?>
            <section class="image-bg-fluid-height desktop-header" style="background: url('<?= $this->configuration_model->nosotros_desktop ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>

            <section class="image-bg-fluid-height mobile-header" style="background: url('<?= $this->configuration_model->nosotros_mobile ?>') no-repeat center center scroll;">
                <div class="container">
                    <div class="row">
                        <div class=" col-xs-12">
                            <h1 class="section-heading"><?=ucfirst($title);?></h1>
                        </div>
                    </div>
                </div>
            </section>
        <?
    }
    ?>

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