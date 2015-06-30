<?php
class Demos extends CI_Controller {

	public function view($page = 'home') {

		if ( ! file_exists('application/views/'.$page.'.php')) {
			// Whoops, we don't have a page for that!
			show_404();
		}

		$this->load->view($page, $data);

	}

}