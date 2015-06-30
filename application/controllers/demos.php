<?php
class Demos extends CI_Controller {

	public function view($page = 'index') {

		if ( ! file_exists('application/views/front/'.$page.'.php')) {
			// Whoops, we don't have a page for that!
			show_404();
		}

		$this->load->view('front/'.$page.'.php', $data);

	}

}