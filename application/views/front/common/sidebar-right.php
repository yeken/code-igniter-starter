
        	<div class="search-right title-blue">
                <form class="navbar-form title-blue" action="<?= base_url()?>search/" method="post">
                    <div class="input-group">
                        <input type="text" name='term' placeholder="Buscar en revolutio..." value="<?= $this->input->post('term')?>">
                        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </form>
            </div>
            
            <div class="row">
            	<div class="col-md-12">
            		<iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Frevolutioblog&amp;width&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true&amp;appId=144634148931996" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:290px; margin-bottom:10px;" allowTransparency="true"></iframe>
            	</div>
            </div>
            <div class="row">            
                <div class="col-md-12" style="margin-top:10px; margin-bottom:10px;">
                <?=$advertisements['right_side']['code']; ?>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
            	<div class="col-md-12">
<a class="twitter-timeline" href="https://twitter.com/revolutioblog" data-widget-id="413316229651124224">Tweets por @revolutioblog</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

            </div></div>
            
            <div class="clearfix"></div>
            
        	<h2 class="title-blue">ART&Iacute;CULOS POPULARES</h2>
            
            <?
			if(count($pop_articles)>0)
			{
				foreach($pop_articles as $a)
				{
				?>
				<div class="row popular-articles">
					<div class="col-md-5">
                    <a href="<?=$a['detail_url'];?>">
						<img src="<? if(valid_url($a['image_list'])){ echo $a['image_list']; }else{ echo base_url().'assets_fe/img/popular_articles.jpg'; } ?>" border="0" />
                    </a>
					</div>
					<div class="col-md-7 noml">
						<h1><a href="<?=$a['detail_url'];?>"><?=$a['title'];?></a></h1>
					</div>
				</div>
				<div class="divider"></div>
				<? 
				}
			}else{
			?>
            <p>Sin articulos populares</p>
			<? } ?>