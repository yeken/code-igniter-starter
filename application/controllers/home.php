<?
require_once(dirname(__FILE__)."/front_init.php");
class Home extends Front_init
{
	public function __construct()
	{
		parent::__construct();
		$this->get_categories();
	    $this->load->helper("url");
	    $this->load->library("pagination");
    	$this->load->model("admin/configuration_model","configuration_model");
    	$this->configuration_model->get(1);
	}

	public function index()
	{
		$this->get_banners();
		$this->get_products();
		$this->get_recent_news();

		$this->load->view("front/index.php", $this->data);
	}

	public function issue_mundo()
	{
		$this->data['section'] = "issue_mundo";
		$this->data['title'] = "Issue en el mundo";
		$this->data['section_content'] = $this->configuration_model->text_issue_mundo;
		$this->load->view("front/about.php", $this->data);
	}

	public function footer_link($text)
	{
		$sections_title = ['text_legal' => "Aviso Legal", 'text_consumer_rights' => "Derechos del Consumidor", 'text_privacy_policy' => "Política de Privacidad"];
		$this->data['section'] = $text;
		$this->data['title'] = $sections_title[$text];
		$this->data['section_content'] = $this->configuration_model->$text;
		$this->load->view("front/about.php", $this->data);
	}

	public function issue_about()
	{
		$this->data['section'] = "nosotros";
		$this->data['title'] = "Nosotros";
		$this->data['section_content'] = $this->configuration_model->text_about;
		$this->load->view("front/about.php", $this->data);
	}

		public function articulos($offset=0)
	{
			
		$this->load->library('pagination');
		
		$config['base_url'] = base_url().'articulos';
		$config['total_rows'] = $this->get_totals_more_news();
		$config['per_page'] = 9; 
		$config['uri_segment'] = 2;
		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		$config['prev_link'] = '&laquo;';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&raquo;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		
		$this->pagination->initialize($config); 

		$this->get_more_news($offset, 9, 1);
		$this->load->view("front/articulos.php", $this->data);
	}

	public function search()
	{
		$this->get_search_news(20);
		$this->get_banners();

		$this->data['page_title'] = 'Revolutio';
		$this->data['page_description'] = 'Revolutio ';
		$this->data['section'] = 'home';

		$this->load->view("front/seach.php", $this->data);
	}

	public function categoria($name='', $offset=0)
	{
		
		$this->load->library('pagination');
		
		$config['base_url'] = base_url().'categoria/'.$name;
		$config['total_rows'] = $this->get_articles();
		$config['per_page'] = 10; 
		$config['uri_segment'] = 4;

		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		$config['prev_link'] = '&laquo;';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&raquo;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		
		$this->pagination->initialize($config); 
		
		$this->get_articles($offset);
		
		
		$this->data['section'] = $name;

		$this->data['avoid_cover'] = $offset ? true: false;
		$this->load->view("front/categoria.php", $this->data);
	}

	public function noticia($id)
	{
		$this->get_article($id);
		$this->get_related_news(4, 'category_id = '.$this->data['article']['category_id'].' AND article_id != '.$this->data['article']['article_id']);
		$this->get_popular_news();
		$this->article_model->add_view();
		//$this->get_ads('article_detail');
		
		$this->data['page_title'] = 'Issue | '.$this->data['article']['title'];
		$this->data['page_description'] = strip_tags($this->data['article']['brief']);

		//$this->load->model('user_model');
		//$this->get_user($this->data['article']['creator_id']);

		$this->data['section'] = 'noticia';

		$this->load->view("front/noticia_detalle.php", $this->data);
	}

		public function tag($tag)
	{
		$this->get_by_tags($tag);
		$this->get_banners();

		$this->data['page_title'] = 'Revolutio | '.$tag;
		$this->data['page_description'] = 'Revolutio ';
		$this->data['section'] = 'search';
		
		$this->data['term'] = urldecode($tag);

		$this->load->view("front/seach.php", $this->data);
	}

	public function blog($offset=0)
	{
		$this->load->library('pagination');
		$this->get_recent_news();
		$this->get_popular_news();
		$this->get_more_news(count($this->data['recents_articles']),4,1);
		$config['base_url'] = base_url().'articulos/';
		$config['total_rows'] = $this->get_totals_more_news(21);
		$config['per_page'] = 9; 
		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		$config['prev_link'] = '&laquo;';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&raquo;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		$this->pagination->initialize($config); 		
		$this->get_banners();
		$this->data['page_title'] = 'Revolutio';
		$this->data['page_description'] = 'Revolutio ';
		$this->data['section'] = 'home';

		// $this->output->enable_profiler(TRUE);

		$this->load->view("front/blog.php", $this->data);
	}

	public function contact()
	{
		$this->data['section'] = "contact";
		$this->data['title'] = "Contactenos";
		$this->load->view("front/contact.php", $this->data);

	}

	public function category($category_id)
	{
		$this->load->model('admin/category_model', 'category_model');
		$this->category_model->get($category_id);
		$this->category_model->get_subcategories();

		$this->data['section'] = "Category";
		$this->data['category_id'] = $category_id;
		$this->load->view("front/category.php", $this->data);
	}

	public function product($product_id)
	{
		$this->load->model('admin/product_model', 'product_model');
		$this->product_model->get($product_id);
		$this->get_colors($product_id);

		$this->data['section'] = "decoloracion";
		$this->load->view("front/detail.php", $this->data);
	}
}