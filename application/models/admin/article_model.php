<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Article_model extends Simple_data_model
{

    public $db_index = 'article_id';
    public $db_table = 'articles';
	public $delete_table = 'articles_deleted';
	public $row_label = array('title');
	
	protected $db_fields = array(
								'category_id',
								'categories_names',
								'group_id',
								'groups_names',
								'tags',
								'title',
								'date_event_start',
								'brief',
								'description',
								'web',
								'source',
								'video',
								'file_manager_id',
								'views',
								'show_image_details',
								'user_listed',
                                'show_agenda',
                                'show_insite',
                                'active',
                                'date_created',
								'creator_id',
								'creator_name',
							);

	public $multiselect_fields = array('categories' => array('table' => 'articles_categories_articles', 
															 'db_index' => 'category_id', 
															 'ori_table' => 'articles_categories', 
															 'count_field' => 'total_articles')
									   						);


	public function get_count_relation($model, $id = NULL)
	{
		switch($model)
		{
			case 'user':
				return $this->db->query("SELECT F.article_id , F.article FROM articles_users as FU INNER JOIN articles as F ON (F.article_id=FU.article_id) WHERE F.article_id = '".$id."' ")->num_rows();
				break;
			default: return false;
		}
	}
	
	public function get_image_panoramic()
	{
		return ($this->panoramic=='')?base_url().'assets_fe/images/defaults/panoramica.jpg':$this->panoramic;
	}

	public function get_image_logo()
	{
		return ($this->panoramic=='')?base_url().'assets_fe/images/defaults/logo.jpg':$this->logo;
	}

	public function add_view($article_id = 0)
	{
		$article_id = $article_id ? $article_id : $this->get_id();
		//$this->logs->add_log('article','view',$article_id);
		$sql = "UPDATE ".$this->db_table." SET views = views + 1 WHERE ".$this->db_index." = ".$article_id;
		$this->db->query($sql);
	}
	
	public function add_user_listed($id = NULL)
	{
		$id = $id ? $id : $this->get_id();
		$sql = "UPDATE ".$this->db_table." SET user_listed = user_listed + 1 WHERE ".$this->db_index." = ".$this->get_id();
		$this->db->query($sql);			
	}

	public function get($opt)
	{
		if(!parent::get($opt))
			return 0;
		
		$this->get_id();
		
		$this->get_categories_names($this->category_id);
		$this->get_groups_names($this->group_id);
		
		return 1;
	}
	
	public function get_categories_names($category_id)
	{
		$res = $this->db->query('SELECT SC.title FROM articles_categories AS SC WHERE SC.category_id = '.$category_id)->result();

		if(count($res)>0)
		{
			$this->categories_names = "";

			foreach($res as $row)
			{	
				$this->categories_names = $row->title;
			}

		}
		return 1;
	}
	
	public function get_groups_names($group_id)
	{
		$res = $this->db->query('SELECT SC.title FROM articles_groups AS SC WHERE SC.group_id = '.$group_id)->result();

		if(count($res)>0)
		{
			$this->groups_names = "";

			foreach($res as $row)
			{	
				$this->groups_names = $row->title;
			}

		}
		return 1;
	}
	
	public function organize_articles_categories()
	{

		$sql_category = "SELECT A.category_id, AC.title FROM articles AS A INNER JOIN articles_categories AS AC ON AC.category_id = A.category_id WHERE A.article_id = ".$this->get_id();
		$crow = $this->db->query($sql_category)->row();

		$sql_group = "SELECT A.group_id, AC.title FROM articles AS A INNER JOIN articles_groups AS AC ON AC.group_id = A.group_id WHERE A.article_id = ".$this->get_id();
		$grow = $this->db->query($sql_group)->row();
		
		if(!isset($grow->title))
		{
			$gname = "Sin grupo";
			$gid = 0;
		}else{
			$gname = $grow->title;
			$gid = $grow->group_id;
		}

		$this->db->query('UPDATE '.$this->db_table.' SET category_id = "'.$crow->category_id.'", categories_names = "'.$crow->title.'", group_id = "'.$gid.'", groups_names = "'.$gname.'" WHERE '.$this->db_index.' = '.$this->get_id());


		// $this->update_multidata_totals('categories');
	}

	public function get_news_by_group($group_id)
	{
		$sql = "SELECT * FROM articles WHERE active = 1 AND group_id = {$group_id} ORDER BY date_event_start DESC LIMIT 0, 6";
		$query = $this->db->query($sql);
		$this->load->model('admin/article_model');
		foreach($query->result_array() as $article)
		{
			$this->article_model->set($article);
			$this->article_model->get_files();
			
			foreach($this->article_model->file_tags as $file_tag)
			{
				$article[$file_tag] = $this->article_model->$file_tag;
			}
			foreach($this->article_model->gallery_tags as $gallery_tag)
			{
				$article[$gallery_tag] = $this->article_model->galleries[$gallery_tag];
			}
			$article['detail_url'] = base_url()."noticia/".$article['article_id']."/".url_title($article['title']);
			
			$recents_articles[] = $article;
		}		
		
		return $recents_articles;

	}


	
	protected function pre_save()
	{
		if($this->user_id)
		{
			$sql = "SELECT username FROM bitauth_users WHERE user_id = '".$this->user_id."'";
			$row = $this->db->query($sql)->row();
			$this->username = $row->username;
		}
	}

	protected function post_save()
	{
		$this->organize_articles_categories();
	} 

}
?>