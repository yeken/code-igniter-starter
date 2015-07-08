

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-xs-12 mobile">
                <img src="<?=base_url();?>assets_fe/img/logo_footer.png" alt="logo" />
                <a href="#" target="_blank" class="social"><img src="<?=base_url();?>assets_fe/img/ico_facebook.png" alt="Facebook" /></a>
                <a href="#" target="_blank" class="social"><img src="<?=base_url();?>assets_fe/img/ico_twitter.png" alt="Twitter" /></a>
          </div>
          <div class="col-xs-12 col-sm-4">
            <p>© 2015. Issue - Todos los derechos reservados®</p>
          </div>
          
          <div class="col-sm-8 notmobile">
              <ul>
                <li>
                  <img class="img-responsive" src="<?=base_url();?>assets_fe/img/logo_footer.png" alt="logo" />
                </li>
                <li>
                  <a href="#">Politica de Privacidad</a>
                </li>
                <li>
                  &bull;
                </li>
                <li>
                  <a href="#">Aviso legal</a>
                </li>
                <li>
                  &bull;
                </li>
                <li>
                  <a href="#">Derechos del consumidor</a>
                </li>
              </ul>
          </div>
        </div>
      </div>
    </footer>

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

  </body>
</html>
