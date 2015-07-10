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

<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 well">
                <?php $attributes = array("class" => "form-horizontal", "name" => "contactform");
                echo form_open("contactform/index", $attributes);?>
                <fieldset>
                <div class="form-group">
                    <div class="col-md-12">
                        <label for="name" class="control-label">Nombre</label>
                    </div>
                    <div class="col-md-12">
                        <input class="form-control" name="name" placeholder="Tu nombre completo" type="text" value="<?php echo set_value('name'); ?>" />
                        <span class="text-danger"><?php echo form_error('name'); ?></span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <label for="email" class="control-label">Email</label>
                    </div>
                    <div class="col-md-12">
                        <input class="form-control" name="email" placeholder="Tu email" type="text" value="<?php echo set_value('email'); ?>" />
                        <span class="text-danger"><?php echo form_error('email'); ?></span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <label for="subject" class="control-label">Asunto</label>
                    </div>
                    <div class="col-md-12">
                        <input class="form-control" name="subject" placeholder="Tu asunto" type="text" value="<?php echo set_value('subject'); ?>" />
                        <span class="text-danger"><?php echo form_error('subject'); ?></span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <label for="message" class="control-label">Mensaje</label>
                    </div>
                    <div class="col-md-12">
                        <textarea class="form-control" name="message" rows="4" placeholder="Tu mensaje"><?php echo set_value('message'); ?></textarea>
                        <span class="text-danger"><?php echo form_error('message'); ?></span>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <input name="submit" type="submit" class="btn btn-primary" value="Enviar" />
                    </div>
                </div>
                </fieldset>
                <?php echo form_close(); ?>
                <?php echo $this->session->flashdata('msg'); ?>
            </div>
        </div>
    </div>
</section>

<? include(dirname(__FILE__)."/common/footer.php") ?>