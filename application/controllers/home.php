<?
require_once(dirname(__FILE__)."/front_init.php");
class Home extends Front_init
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->data['section'] = "home";
		$this->load->view("front/index.php", $this->data);
	}

	public function coloracion()
	{
		$this->data['section'] = "coloracion";
		$this->load->view("front/coloracion.php", $this->data);
	}

	public function decoloracion()
	{
		$this->data['section'] = "decoloracion";
		$this->load->view("front/coloracion.php", $this->data);
	}

	public function tratamientos()
	{
		$this->data['section'] = "tratamientos";
		$this->load->view("front/coloracion.php", $this->data);
	}

	public function issue_mundo()
	{
		$this->data['section'] = "issue_mundo";
		$this->load->view("front/about.php", $this->data);
	}

	public function issue_about()
	{
		$this->data['section'] = "issue_about";
		$this->load->view("front/about.php", $this->data);
	}

	public function contact()
	{
		$this->data['section'] = "contact";
		$this->load->view("front/index.php", $this->data);

	}
}