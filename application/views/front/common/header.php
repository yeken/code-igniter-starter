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
    <link href="<?=base_url();?>/assets_fe/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="<?=base_url();?>/assets_fe/css/jquery.bxslider.css" />
    <link rel="stylesheet" href="<?=base_url();?>/assets_fe/css/owl.carousel.css" />
    <link rel="stylesheet" href="<?=base_url();?>/assets_fe/css/owl.theme.default.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<?=base_url();?>/assets_fe/js/bootstrap.min.js"></script>
    <script src="<?=base_url();?>/assets_fe/js/jquery.bxslider.min.js"></script>
    <script src="<?=base_url();?>/assets_fe/js/owl.carousel.min.js"></script>
    <script>
      $(document).ready(function(){
      
        $('.bxslider').bxSlider({
          mode: 'horizontal',
          auto: true,
          autoStart: true,
          infiniteLoop: true,
          speed: 2000
        });

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
      <div id="header-top">
        <div class="content row">
          <div class="col-md-6 col-sm-6 col-xs-10 col-md-offset-6 col-sm-offset-6 col-xs-offset-2">
            <nav>
              <ul>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="issue-en-el-mundo.html">Issue en el mundo</a></li>
                <li><a href="nosotros.html">Nosotros</a></li>
                <li class="social"><a href="#" target="_blank"><img src="img/ico_facebook.png" alt="Facebook" /></a></li>
                <li class="social"><a href="#" target="_blank"><img src="img/ico_twitter.png" alt="Twitter" /></a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
      <div id="header-bottom">
        <div class="content row">
          <div class="col-md-4 col-sm-4 col-xs-8">
            <h1>Issue</h1>
          </div>
          <div class="col-md-8 col-sm-8 col-xs-4">
            <nav>
              <ul>
                <li><a href="">Coloración</a></li>
                <li><a href="">Decoloración</a></li>
                <li class="last"><a href="">Tratamientos</a></li>
              </ul>
            </nav>
            <button id="btn_mobile"><img src="img/btn_mobile.png" alt="Boton Mobile" /></button>
          </div>
        </div>
      </div>
    </header>