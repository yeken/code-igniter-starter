<? include(dirname(__FILE__)."/common/header.php") ?>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=557486314296533";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

window.fbAsyncInit = function() {
 FB.Event.subscribe('edge.create', function(href, widget) {
});
};
</script>

<section class="image-bg-fluid-height" style="background: url('<?=base_url();?>assets_fe/img/slider1.jpg') no-repeat center center scroll;">
    <div class="container">
        <div class="row">
            <div class=" col-xs-12">
                <h1 class="section-heading"><?=ucfirst($title);?></h1>
            </div>
        </div>
    </div>
</section>

<!-- Page Content -->
	<section id="blog">
        <div class="container">

            <div class="row">
                <div class="col-xs-12 col-sm-7" id="blog-post">
                    <h2 class="<?= $this->blog_model->category?>">
                        <?= $this->blog_model->category?>
                    </h2>
                    <img class="img-responsive" src="<?= $this->blog_model->main_image?>" alt="">
                    <div class="social">
                    	<div class="fb-like" data-href="<?= base_url()?>post/<?= $this->blog_model->post_id?>/<?= $this->blog_model->name?>" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
                        <a href="https://twitter.com/share"  data-related="IssueMundo" class="twitter-share-button" data-dnt="true" data-count="none" data-via="" data-text=" ">Tweet</a>

                    </div>
                    <h3><?= $this->blog_model->name?></h3>
                    <p>
                        <?= $this->blog_model->description?>
                    </p>
                </div>

                <div class="col-xs-12 col-sm-5" id="popular">
                    <!-- Blog Categories Well -->
                      <h4>
                      	Articulos populares
                    	</h4>
                      <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-12">
                                <ul>
                                    <?
                                    if(is_array($posts['full_list'])){
                                        $i = 0;
                                        foreach($posts['full_list'] as $post){
                                    ?>
                                    <li>
                                    	<img class="img-responsive" src="<?= $post->main_image?>" alt="">
                                    	<a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= $post->category?>/<?= urlencode($post->name)?>">
                                            <?= $post->name?>
                                        </a>
                                    </li>
                                    <?
                                        $i++;
                                        if($i==3) break;
                                        }
                                    }
                                    ?>
                                </ul>
                            </div>
                        </div>
                        <!-- /.row -->
                      </div>
                </div>

                <!-- relateds posts -->
                <div class="col-xs-12 col-sm-7">
                    <div class="container-fluid" id="related">
                        <div class="row">
                            <div class="col-lg-12">
                             <h4>Artículos relacionados</h4>
                            </div>
                        </div>
                        <div class="row">
                            <?
                            if(count($this->blog_model->related)){
                            foreach ($this->blog_model->related as $related) {
                            ?>
                            <div class="col-xs-3 col-lg-3">
                                <img class="img-responsive" src="<?= $related->main_image?>" alt="">
                                <h3><?= $related->name?></h3>
                                <p><?= $related->date_created?></p>
                                <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= urlencode($post->name)?>">
                                    Ver más
                                </a>
                            </div>
                            <?
                            }
                            }
                            ?>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->

        </div>
    <!-- /.container -->
	</section>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

<? include(dirname(__FILE__)."/common/footer.php") ?>