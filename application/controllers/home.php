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

	public function contact()
	{
		$this->data['section'] = "contact";
		$this->load->view("front/index.php", $this->data);

	}
}