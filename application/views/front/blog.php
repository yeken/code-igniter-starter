<? include(dirname(__FILE__)."/common/header.php") ?>

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
            <?
            if(is_array($posts)){
                foreach($posts as $post){
            ?>
            <div class="row post-item">
                <div class="col-md-5">
                    <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= $post->category?>/<?= urlencode($post->name)?>">
                        <img class="img-responsive img-hover" src="<?= $post->main_image?>" alt="">
                    </a>
                </div>
                <div class="col-md-6">
                    <h3>
                        <a href="blog-post.html"><?= $post->name?></a>
                    </h3>
                    <p>
                        Categoria <a href="<?= base_url()?>post/<?= $post->get_id()?>/<?= $post->category?>/<?= urlencode($post->name)?>"><?= $post->category?></a>
                    </p>
                    <p class="description"><?= $post->description?></p>
                    <a class="btn btn-primary" href="<?= base_url()?>post/<?= $post->get_id()?>/<?= $post->category?>/<?= urlencode($post->name)?>">Leer más <i class="fa fa-angle-right"></i></a>
                </div>
            </div>

            <hr>
            <?
                }
            }

            echo $this->pagination->create_links();
            
            ?>

            <!-- Pager -->
            <div class="row">
                <ul class="pager">
                    <li class="previous"><a href="#">&larr; Older</a>
                    </li>
                    <li class="next"><a href="#">Newer &rarr;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.container -->
    </section>

    <script type="text/javascript">
        $(".post-item .description").text(function(index, currentText) {
            return currentText.substr(0, 250);
        });
    </script>
<? include(dirname(__FILE__)."/common/footer.php") ?>    