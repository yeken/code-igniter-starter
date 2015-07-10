<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Blog_model extends Simple_data_model
{

    public $db_index = 'post_id';
    public $db_table = 'blog';

	protected $db_fields = array(
								'name',
								'description',
								'category',
								'file_manager_id',
								'active',
								'date_created',
								);


	public function get_relateds(){
			$sql = "SELECT * FROM blog WHERE active = 1 AND category = '$this->category' ORDER BY post_id DESC";
			$result = $this->db->query($sql)->result_array();

			$this->load->model('admin/blog_model', 'blog_model');
			$this->data['relateds'] = array();

			foreach ($result as $row){
				$relateds = new Blog_model();
				$relateds->set($row);
				$relateds->get_files();
				$this->data['relateds'][] = $relateds;
			}
	}

}
?>