<? include(dirname(__FILE__)."/common/header.php") ?>

<section class="image-bg-fluid-height" style="background: url('<?=base_url();?>assets_fe/img/slider1.jpg') no-repeat center center scroll;">
    <div class="container">
        <div class="row">
            <div class=" col-xs-12">
                <h1 class="section-heading">Contactenos</h1>
            </div>
        </div>
    </div>
</section>

<section id="contact">
    <div class="container">
        <div class="row" id="contact-container">
            <div class="col-md-8 col-md-offset-2 well">
                <h2>Envianos tu mensaje y nos contactaremos a la brevedad</h2>
                <form id="contact-form" class="ajax_form" action="./home/validate_contact_form/contact" method="post" enctype="multipart/form-data">
                <fieldset>
                <?
                    $this->admin_forms->label_in_input = false;
                    foreach($page_fields['contact'] as $field => $attr)
                    {

                            echo '<div class="form_field contact" id="'.$field.'_box">';
                            echo $this->admin_forms->input_block($field,$attr);
                            echo '<div class="clearfix"></div>';
                            echo '<div id="contact_error_'.$field.'" class="contact_msg_error" style="display:none; color: #dd2222; margin:10px"></div>';
                            echo '<div class="clearfix"></div>';
                            echo '</div>';
                    }?>
                    <div class="col-md-12">
                        <div class="pull-right">
                            <input name="submit" type="submit" class="btn btn-primary" value="Enviar" />
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>
        </div>
    </div>
</section>

<? include(dirname(__FILE__)."/common/footer.php") ?>