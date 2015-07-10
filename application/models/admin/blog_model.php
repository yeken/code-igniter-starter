<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Blog_model extends Simple_data_model
{

    public $db_index = 'post_id';
    public $db_table = 'blog';
    public $related;

	protected $db_fields = array(
								'name',
								'description',
								'category',
								'file_manager_id',
								'active',
								'date_created',
								);


	public function get_related(){
			$sql = "SELECT * FROM blog WHERE active = 1 AND category = '$this->category' AND post_id != '$this->post_id' ORDER BY post_id DESC";
			$result = $this->db->query($sql)->result_array();

			$this->related = array();

			foreach ($result as $row){
				$related_obj = new Blog_model();
				$related_obj->set($row);
				$related_obj->get_files();
				$this->related[] = $related_obj;
			}
	}

	public function get($opt)
	{
		parent::get($opt);

		$this->get_related();
	}
}
?>