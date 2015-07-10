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
                    	<img class="img-responsive" src="<?=base_url();?>assets_fe/img/social-demo.jpg">
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
                                    if(is_array($posts)){
                                        $i = 0;
                                        foreach($posts as $post){
                                    ?>
                                    <li>
                                    	<img class="img-responsive" src="<?= $post->main_image?>" alt="">
                                    	<a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= $post->category?>/<?= urlencode($post->name)?>">
                                            "<?= $post->name?>"
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
                                <img class="img-responsive" src="http://placehold.it/125x125" alt="">
                                <h3>Related title</h3>
                                <p>12/12/1212</p>
                                <a href="#">Related link</a>
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

<? include(dirname(__FILE__)."/common/footer.php") ?>