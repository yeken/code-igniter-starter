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
		$this->get_posts();

		$this->load->view("front/index.php", $this->data);
	}

	public function issue_mundo()
	{
		$this->data['section'] = "issue_mundo";
		$this->data['title'] = "Issue en el mundo";
		$this->data['section_content'] = $this->configuration_model->text_issue_mundo;
		$this->load->view("front/about.php", $this->data);
	}

	public function issue_about()
	{
		$this->data['section'] = "nosotros";
		$this->data['title'] = "Nosotros";
		$this->data['section_content'] = $this->configuration_model->text_about;
		$this->load->view("front/about.php", $this->data);
	}

	public function blog()
	{
		$this->get_posts();

		$config = array();
    $config["total_rows"] = $this->blog_model->record_count();
    $config["per_page"] = 1;
    $config["uri_segment"] = 3;

    $this->pagination->initialize($config);

    $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
    $data["results"] = $this->blog_model->fetch_posts($config["per_page"], $page);
    $data["links"] = $this->pagination->create_links();

		$this->data['section'] = "blog";
		$this->load->view("front/blog.php", $this->data);
	}

	public function post($post_id)
	{
		$this->load->model('admin/blog_model', 'blog_model');
		$this->blog_model->get($post_id);
		$this->get_posts();

		if(!$this->blog_model->get_id()){
			$this->index();
			die();
		}
		$this->data['section'] = "blog";
		$this->load->view("front/post.php", $this->data);
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
		$this->get_colors();

		$this->data['section'] = "decoloracion";
		$this->load->view("front/detail.php", $this->data);
	}
}