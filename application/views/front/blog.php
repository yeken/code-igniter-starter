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
            <div class="row">
                <div class="col-xs-7">
                    <div class="destacado">
                        <img src="">
                        <p>
                            <?
                                if(is_array($posts['by_category']['consejo'])){
                                    foreach($posts['by_category']['consejo'] as $post){
                                        echo "sadasf";
                                    }
                                }
                            ?>
                        </p>
                    </div>
                    <div class="tendencias">
                        <?
                            if(is_array($posts['by_category']['tendencia'])){
                                $i = 0;
                                if($i)
                                foreach($posts['by_category']['tendencia'] as $post){
                                    echo "sadasf";
                                }
                            }
                        ?>
                        <div class="row">
                            <div class="col-xs-6">

                            </div>
                            <div class="col-xs-6">

                            </div>
                        </div>
                    </div>
                    <div class="todos">
                        <div class="item">
                            img
                            category
                            titulo
                            fecha
                            desc
                            link
                        </div>
                    </div>
                </div>
                <div class="col-xs-5">
                    <div class="novedades">

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