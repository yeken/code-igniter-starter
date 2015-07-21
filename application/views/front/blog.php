<? include(dirname(__FILE__)."/common/header.php") ?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <section class="image-bg-fluid-height" style="background: url('<?=base_url();?>assets_fe/img/slider1.jpg') no-repeat center center scroll;">
        <div class="container">
            <div class="row">
                <div class=" col-xs-12">
                    <h1 class="section-heading"><?=ucfirst($section);?></h1>
                </div>
            </div>
        </div>
    </section>
    
    <section id="blog">
        <div class="container">
            <div class="row">
                
                <div class="col-xs-7">

                    <div class="destacado">
                        <?
                            if(is_array($posts['by_category']['novedades'])){
                                $i = 0;
                                foreach($posts['by_category']['novedades'] as $post){
                                    
                        ?>
                            <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= urlencode($post->name)?>">
                                <img class="img-responsive" src="<?= $post->main_image?>">
                                <h4><?= $post->name?></h4>
                                <p class="description"><?= $post->description?></p>
                            </a>
                        <?
                                    $i++;
                                    if($i==1){
                                      break;
                                    }
                                }
                            }
                        ?>  
                    </div>

                    <div class="tendencias">
                        <div class="row">
                            <?
                            if(is_array($posts['by_category']['tendencia'])){
                                $i = 0;
                                foreach($posts['by_category']['tendencia'] as $post){

                            ?>
                            <div class="col-xs-6">
                                <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= urlencode($post->name)?>">
                                    <img class="img-responsive" src="<?= $post->main_image?>">
                                    <h3 class="<?= $post->category?>"><?= $post->category?></h3>
                                    <h4><?= $post->name?></h4>
                                    <p class="date"><?= $post->date_created?></p>
                                    <p class="description"><?= $post->description?></p>
                                </a>
                            </div>
                            <?
                                    $i++;
                                    if($i==2){
                                        break;
                                    }
                                }
                            }
                            ?>
                        </div>
                    </div>
                    <h4>Todos los posts</h4>
                    <div class="todos">
                        <div class="row">
                            <?
                                if(is_array($posts['full_list'])){
                                    $i = 0;
                                    foreach($posts['full_list'] as $post){
                                        
                            ?>
                            <div class="col-xs-12">
                                <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= urlencode($post->name)?>">
                                    <img class="img-responsive" src="<?= $post->main_image?>">                                                              
                                    <h4><?= $post->name?></h4>
                                    <h3><?= $post->category?></h3>  
                                    <p class="date"><?= $post->date_created?></p>
                                    <p class="description"><?= $post->description?></p>
                                </a>
                            </div>
                            <?
                                        $i++;
                                        if($i==10){
                                          break;
                                        }
                                    }
                                }
                            ?>  
                        </div>
                    </div>
                </div>
                     
                <div class="col-xs-5">
                    <div class="fb-page" data-href="https://www.facebook.com/facebook" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div></div>
                    <h4>Novedades</h4>
                    <div class="novedades">
                        <?
                            if(is_array($posts['by_category']['novedades'])){
                                $i = 0;
                                foreach($posts['by_category']['novedades'] as $post){
                                    
                        ?>
                        <div class="item">
                            <img class="img-responsive" src="<?= $post->main_image?>">
                            <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= urlencode($post->name)?>">
                                <?= $post->name?>
                            </a>
                        </div>
                        <?
                                    $i++;
                                    if($i==5){
                                      break;
                                    }
                                }
                            }
                        ?>  
                    </div>          
                </div>

            </div>              
        </div>
    </section>

    <script type="text/javascript">
        $(".post-item .description").text(function(index, currentText) {
            return currentText.substr(0, 250);
        });
    </script>
<? include(dirname(__FILE__)."/common/footer.php") ?>