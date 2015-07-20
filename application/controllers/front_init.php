<?
class Front_init extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->data['fields'] = array(	'name' => array(	'label' => 'Nombre',
															'type' => 'text',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
										'last_name' => array(	'label' => 'Apellido',
															'type' => 'text',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
										'email' => array(	'label' => 'Email',
															'type' => 'text',
															'validation' => 'required|valid_email|xss_clean',
															'visibility' => 'contact'
															),
										'telephone' => array(	'label' => 'Teléfono',
																'type' => 'text',
																'validation' => 'xss_clean',
																'visibility' => 'contact'
															),
										'subject' => array(	'label' => 'Asunto',
															'type' => 'text',
															'validation' => 'required|xss_clean',
															'visibility' => 'contact'
															),
										'message' => array(	'label' => 'Mensaje',
															'type' => 'textarea',
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
			$sql = 'SELECT * FROM products WHERE active = 1 ORDER BY product_id DESC';
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
			$sql = "SELECT * FROM colors AS c JOIN products_colors AS pc ON (c.color_id = pc.color_id)
					WHERE  pc.product_id = '$product_id' AND c.active = 1 ORDER BY c.color_id DESC" ;
			$result = $this->db->query($sql)->result_array();

			$this->load->model('admin/color_model', 'color_model');
			$this->data['colors'] = array();

			foreach ($result as $row){
				$color = new Color_model();
				$color->set($row);
				$color->get_files();
				$this->data['colors'][$color->category][] = $color;
			}
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
				$this->data['posts'][] = $post;
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