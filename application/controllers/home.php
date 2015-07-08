<?
require_once(dirname(__FILE__)."/front_init.php");
class Home extends Front_init
{
	public function __construct()
	{
		parent::__construct();
		$this->get_categories();
	}

	public function index()
	{
		$this->get_banners();
		$this->get_products();

		$this->load->view("front/index.php", $this->data);
	}

	public function issue_mundo()
	{
		$this->data['section'] = "issue_mundo";
		$this->data['title'] = "Issue en el mundo";
		$this->load->view("front/about.php", $this->data);
	}

	public function issue_about()
	{
		$this->data['section'] = "nosotros";
		$this->data['title'] = "Nosotros";
		$this->load->view("front/about.php", $this->data);
	}

	public function blog()
	{
		$this->data['section'] = "blog";
		$this->data['title'] = "Blog";
		$this->load->view("front/blog.php", $this->data);
	}

	public function detail()
	{
		$this->data['section'] = "detail";
		$this->data['title'] = "Detalle";
		$this->load->view("front/detail.php", $this->data);

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
		$this->load->view("front/category.php", $this->data);
	}

	public function product($product_id)
	{
		$this->load->model('admin/product_model', 'product_model');
		$this->product_model->get($product_id);

		$this->data['section'] = "decoloracion";
		$this->load->view("front/detail.php", $this->data);
	}
}