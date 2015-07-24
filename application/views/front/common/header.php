<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Issue</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Signika:400,300,600,700' rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    <link href="<?=base_url();?>assets_fe/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?=base_url();?>assets_fe/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="<?=base_url();?>assets_fe/css/style.css" rel="stylesheet">
    <link href="<?=base_url();?>assets_fe/css/blog.css" rel="stylesheet">
    <link href="<?=base_url();?>assets_fe/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="<?=base_url();?>assets_fe/css/owl.carousel.css" />
    <link rel="stylesheet" href="<?=base_url();?>assets_fe/css/owl.theme.default.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<?=base_url();?>assets_fe/js/bootstrap.min.js"></script>
    <script src="<?=base_url();?>assets_fe/js/owl.carousel.min.js"></script>
    <?
    if($section == "contact")
    {
      ?>
      <script src="<?=base_url();?>assets_common/js/jquery.form.js"></script>
      <script>
          $('#contact-form').ajaxForm({
          // dataType identifies the expected content type of the server response
            dataType:  'json',
            // success identifies the function to invoke when the server response
            // has been received
            success:   validate_ajax_form
          });

          function validate_ajax_form(data) {

            $('.contact_msg_error').fadeOut();

            if(!data.valid)
            {
              $.each(data.errors, function(key, value) {

                if(value)
                  $('#contact_error_' + key ).html( value ).fadeIn();
              });
            }
            else
            {
              $('#contact-container').hide().html('<div class="alert alert-success">Gracias por contactarte con Nosotros!</div>').fadeIn();
            }
          };
      </script>
      <?
    }
    ?>
    <script>
      $(document).ready(function(){

        $('.owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }
        });

      });
    </script>
  </head>
  <body>
    <header>
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <nav class="navbar-primary">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#primary" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"><i class="fa fa-bars bigicon"></i></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="logo" href="<?=base_url();?>">
                    <img class="img-responsive" src="<?=base_url();?>assets_fe/img/logo.png">
                  </a>
                </div>

                <div class="collapse navbar-collapse" id="primary">
                  <ul class="navbar-nav navbar-right">
                    <li><a class="<?= $section == 'blog' ? 'active' : "" ?>" href="<?=base_url();?>blog">Blog</a></li>
                    <li><a class="<?= $section == 'issue_mundo' ? 'active' : "" ?>" href="<?=base_url();?>issue_mundo">Issue en el mundo</a></li>
                    <li><a class="<?= $section == 'nosotros' ? 'active' : "" ?>" href="<?=base_url();?>issue_about">Nosotros</a></li>
                    <li><a class="<?= $section == 'contact' ? 'active' : "" ?>" href="<?=base_url();?>contact">Contacto</a></li>
                    <li class="social"><a href="<?= $this->configuration_model->url_facebook?>" target="_blank"><img src="<?=base_url();?>assets_fe/img/ico_facebook.png" alt="Facebook" /></a></li>
                    <li class="social"><a href="<?= $this->configuration_model->url_youtube?>" target="_blank"><img src="<?=base_url();?>assets_fe/img/ico_youtube.png" alt="Youtube" /></a></li>
                  </ul>
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </header>

    <div id="second-nav">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <a class="logo" href="<?=base_url();?>">
              <img class="img-responsive" src="<?=base_url();?>assets_fe/img/logo.png">
            </a>
            <ul>
              <li>
                <a class="<?= $category_id == '4' ? 'active' : "" ?>" href="<?=base_url();?>tratamientos">tratamientos</a>
              </li>
              <li>
                <a class="<?= $category_id == '2' ? 'active' : "" ?>" href="<?=base_url();?>decoloracion">decoloración</a>
              </li>
              <li>
                <a class="<?= $category_id == '1' ? 'active' : "" ?>" href="<?=base_url();?>coloracion">coloración</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>