<?
class Front_init extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->data['fields'] = array(	'name' => array(	'label' => 'Nombre',
															'type' => 'contact_text',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
										'last_name' => array(	'label' => 'Apellido',
															'type' => 'contact_text',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
										'email' => array(	'label' => 'Email',
															'type' => 'contact_text',
															'validation' => 'required|valid_email|xss_clean',
															'visibility' => 'contact'
															),
										'telephone' => array(	'label' => 'Teléfono',
																'type' => 'contact_text',
																'validation' => 'xss_clean',
																'visibility' => 'contact'
															),
										'message' => array(	'label' => 'Mensaje',
															'type' => 'contact_textarea',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
								);

		$this->split_fields();

	}

	protected function redirect_login()
	{
		if($this->company_model->users_activated && !$this->bitauth->logged_in())
		{
			redirect($this->data['link_url']."log-in");
		}
	}


	public function clear_session()
	{
		$this->session->sess_destroy();
	}

	protected function get_categories(){
		$sql = 'SELECT * FROM categories ORDER BY category_id DESC';
		$result = $this->db->query($sql)->result_array();

		$this->load->model('admin/category_model', 'category_model');
		$this->data['categories'] = array();

		foreach($result as $row){
			$category = new Category_model();
			$category->set($row);
			$category->get_files();
			$this->data['categories'][] = $category;
		}
	}

	protected function get_subcategories(){
		$sql = 'SELECT * FROM subcategories WHERE active = 1 AND show_in_home = 1 ORDER BY position DESC';
		$result = $this->db->query($sql)->result_array();

		$this->load->model('admin/subcategory_model', 'subcategory_model');
		$this->data['categories'] = array();

		foreach($result as $row){
			$subcategory = new Subcategory_model();
			$subcategory->set($row);
			$subcategory->get_files();
			$this->data['subcategories'][] = $subcategory;
		}
	}

	protected function get_banners(){
		$sql = 'SELECT * FROM banners WHERE active = 1 ORDER BY banner_id DESC';
		$result = $this->db->query($sql)->result_array();

		$this->load->model('admin/banner_model', 'banner_model');
		$this->data['banners'] = array();

		foreach($result as $row){
			$banner = new Banner_model();
			$banner->set($row);
			$banner->get_files();
			$this->data['banners'][] = $banner;
		}
	}

	public function get_products(){
			$sql = 'SELECT * FROM products WHERE active = 1 ORDER BY position DESC';
			$result = $this->db->query($sql)->result_array();

			$this->load->model('admin/product_model', 'product_model');
			$this->data['products'] = array();

			foreach ($result as $row){
				$product = new Product_model();
				$product->set($row);
				$product->get_files();
				$this->data['products'][] = $product;
			}
	}


	public function get_colors($product_id){
			$sql = "SELECT * FROM colors AS c JOIN products_colors AS pc ON ( c.color_id = pc.color_id ) WHERE pc.product_id = '$product_id' AND c.active =1 ORDER BY CAST( c.tone AS UNSIGNED ) ASC , CAST( subtone AS UNSIGNED ) ASC";
			$result = $this->db->query($sql)->result_array();

			$this->load->model('admin/color_model', 'color_model');
			$this->data['colors'] = array();

			foreach ($result as $row){
				$color = new Color_model();
				$color->set($row);
				$color->get_files();
				$this->data['colors_mobile'][$color->category][] = $color;
			}

			foreach ($result as $row){
				$color = new Color_model();
				$color->set($row);
				$color->get_files();
				$this->data['colors_desktop'][] = $color;
			}

	}

	public function get_news_by_author($author, $limit=10)
	{
		$sql = "SELECT * FROM articles WHERE active = 1 AND show_insite = 1 AND creator_name = '{$author}' ORDER BY  date_created DESC LIMIT 0, {$limit}";

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

			$this->data['articles'][] = $article;
		}
	}

	public function get_totals_more_news($group_id = 0)
	{
		$sql = "SELECT * FROM articles WHERE active = 1 AND show_insite = 1 ".($group_id ? "AND group_id = '".(int)$group_id."'" : "")." ORDER BY date_event_start DESC";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}


	public function get_recent_news($offset=0, $limit=4 )
	{
		$sql = "SELECT A.* FROM articles AS A  WHERE A.active = 1 AND A.show_insite = 1 ORDER BY  A.date_event_start DESC LIMIT {$offset}, {$limit}";
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

			$this->data['recents_articles'][] = $article;
		}
	}

	public function get_more_news($offset=0, $limit=4, $where=1)
	{
		$this->data['more_articles'] = array();
		$sql = "SELECT * FROM articles WHERE {$where} AND active = 1 AND show_insite = 1 ORDER BY date_event_start DESC LIMIT {$offset} , {$limit}";
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

			$this->data['more_articles'][] = $article;
		}
	}

	public function get_related_news($limit=4, $where=1)
	{
		$sql = "SELECT * FROM articles WHERE {$where} AND active = 1 AND show_insite = 1 ORDER BY date_event_start DESC LIMIT {$limit}";
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

			$this->data['related_articles'][] = $article;

		}
	}

	public function get_by_tags($tag)
	{
		$term = urldecode($tag);
		$sql = "SELECT * FROM articles WHERE active = 1 AND (tags LIKE '%".$term."%') AND show_insite = 1 ORDER BY  date_created DESC";

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

			$this->data['search_articles'][] = $article;
		}
	}

	public function get_search_news($limit=20)
	{
		$term = $this->input->post('term');
		$this->data['search'] = $term;
		$sql = "SELECT * FROM articles WHERE active = 1 AND(title LIKE '%".$term."%' OR brief LIKE '%".$term."%' OR description LIKE '%".$term."%' OR MATCH(brief,description,title) AGAINST ('".mysql_real_escape_string($term)."'))  ORDER BY  date_created DESC LIMIT 0, {$limit}";

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

			$this->data['search_articles'][] = $article;
		}
	}

	public function get_category_by_id($category_id)
	{
		$sql = "SELECT * FROM articles_categories WHERE category_id = {$category_id} AND active = 1";
		$query = $this->db->query($sql);
		$this->load->model('admin/article_category_model');
		foreach($query->result_array() as $category)
		{
			$this->article_category_model->set($category);
			$this->article_category_model->get_files();

			foreach($this->article_category_model->file_tags as $file_tag)
			{
				$category[$file_tag] = $this->article_category_model->$file_tag;
			}
			foreach($this->article_category_model->gallery_tags as $gallery_tag)
			{
				$category[$gallery_tag] = $this->article_category_model->galleries[$gallery_tag];
			}

			$this->data['category'] = $category;
		}
	}

	public function get_totals_articles_by_category($category_id)
	{
		$sql = "SELECT * FROM articles AS a WHERE a.category_id = {$category_id} AND a.active = 1 AND show_insite = 1";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}

	public function get_articles($offset=0)
	{

		$sql = "SELECT * FROM articles AS a WHERE active = 1 LIMIT {$offset} , 10";
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

			$this->data['articles'][] = $article;
		}
	}

	public function get_article($id)
	{
		$sql = "SELECT * FROM articles WHERE article_id = ".$id." AND active = 1 ORDER BY date_event_start DESC LIMIT 1";
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

			if($where!=1)
			{
				$this->data['article'] = $article;
			}else{
				$this->data['articles'][] = $article;
			}
		}
	}

	public function get_news($limit=3, $where=1)
	{
		$sql = "SELECT * FROM articles WHERE {$where} AND active = 1 AND show_insite = 1 ORDER BY date_event_start DESC LIMIT {$limit}";
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

			if($where!=1)
			{
				$this->data['article'] = $article;
			}else{
				$this->data['articles'][] = $article;
			}
		}
	}

	public function get_popular_news($limit=5, $where=1)
	{
		$sql = "SELECT * FROM articles WHERE {$where} AND active = 1 AND show_insite = 1 ORDER BY views DESC LIMIT {$limit}";
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

			$this->data['pop_articles'][] = $article;
			
		}
	}

	public function get_totals_recent_news()
	{
		$sql = "SELECT * FROM articles AS A INNER JOIN articles_groups AS ag ON ag.group_id = A.group_id WHERE A.active = 1 AND A.group_id != 0 AND ag.active = 1 AND ag.show_home = 1 AND A.show_insite = 1 GROUP BY ag.group_id ORDER BY ag.group_id ASC, A.date_event_start DESC LIMIT 0, 20000";
		$query = $this->db->query($sql);
		$query->num_rows();
	}


	public function get_posts(){
			$sql = 'SELECT * FROM blog WHERE active = 1 ORDER BY post_id DESC';
			$result = $this->db->query($sql)->result_array();

			$this->load->model('admin/blog_model', 'blog_model');
			$this->data['posts'] = array();

			foreach ($result as $row){
				$post = new Blog_model();
				$post->set($row);
				$post->get_files();
				$this->data['posts']['by_category'][$post->category][] = $post;
				$this->data['posts']['full_list'][] = $post;
			}
	}
	/*
	Splits the fields array into page_fields[$visible_page][field_id][field_attributes]
	*/
	protected function split_fields()
	{
		if(!is_array($this->data['fields'])) return 0;

		$file_types = array('image','video','archive');
		$this->data['page_fields'] = array();
		foreach($this->data['fields'] as $field_id => $attrs)
		{
			if($attrs['visibility'])
			{
				$visibilities = explode("|", $attrs['visibility']);
				foreach($visibilities as $visibility)
				{
					$this->data['page_fields'][$visibility][$field_id] = $attrs;
				}
			}
			// insert file fields;
			if(in_array($attrs['type'],$file_types))
			{
				$this->file_fields[$field_id] = $attrs;
			}
		}
	}

	public function get_file_manager()
	{
		$this->load->model('admin/file_manager_model', 'file_manager');
		if($this->form_model->file_manager_id && $this->file_manager->get($this->form_model->file_manager_id))
		{
			return;
		}
		else
		{
			$this->file_manager->create();
			$this->form_model->set_field('file_manager_id',$this->file_manager->get_id());
			$this->form_model->save();
		}
	}

	public function validate_contact_form($page)
	{
		$output['page'] = $page;
		$output['valid'] = false;
		$this->form_validation->set_message('matches', '%s y %s deben ser iguales');
		$this->form_validation->set_message('required', 'Falta completar este campo');
		$this->form_validation->set_message('valid_email', 'Este email no es v&aacute;lido');
		$this->form_validation->set_message('alpha_numeric_space', 'Este campo solo puede contener letras, n&uacute;meros y espacios');


		foreach($this->data['page_fields'][$page] as $field_id => $field)
		{
			$this->form_validation->set_rules($field_id, $field['label'], $field['validation']);
		}

		$this->data['post'] = $this->input->post();
		if(!$this->form_validation->run())
		{
			$output['valid'] = 0;

			foreach($this->data['page_fields'][$page] as $field_id => $field)
			{
				$output['errors'][$field_id] = form_error($field_id);
			}
		}
		else
		{
			$output['valid'] = true;

			switch($page)
			{
				case 'contact':
					$this->load->model("admin/contact_model","form_model");
					$this->data['post']['name'] = $this->data['post']['name']." ".$this->data['post']['last_name'];
					unset($this->data['post']['last_name']);
					break;
			}

			if(!isset($output['valid']) || $output['valid'])
			{

				$this->form_model->set($this->data['post']);

				if($this->form_model->save())
				{
					$output['valid'] = 1;
					switch($page)
					{
						case 'contact':
							$this->send_register_email();
							break;
					}
				}
				else
				{
					$output['valid'] = 0;
					$output['errors'] = $this->form_model->get_error_message();
				}
			}
		}
		echo json_encode($output);
	}

	protected function send_register_email()
	{
		$this->load->library('email');

		$config['protocol'] = 'mail';
		$config['charset'] = 'utf-8';
		$config['mailtype'] = 'html';

		$this->email->initialize($config);

		$this->email->from('admin@issue.com', 'Issue Web');

		$this->email->to('joaquinastelarra@gmail.com');
		$this->email->reply_to($this->form_model->email);

		$this->email->subject($this->form_model->subject);

		$body= "Nombre: ".$this->form_model->name."<br>";
		$body.= "Email: ".$this->form_model->email."<br>";
		$body.= "Teléfono: ".$this->form_model->telephone."<br>";
		$body.= "Asunto: ".$this->form_model->subject."<br>";
		$body.= "Mensaje: ".$this->form_model->message."<br>";
		$body.= "--";

		$this->email->message($body);

		$this->email->send();

	}


	protected function check_captcha()
	{
		$captcha_input = $this->input->post('captcha_input', TRUE);
    	$captcha_text = $this->simple_captcha->get_captcha_text('signup');
		return $captcha_input && ($captcha_input == $captcha_text);
	}
}

?>