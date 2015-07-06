<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Category_model extends Simple_data_model
{

  public $db_index = 'category_id';
  public $db_table = 'categories';
  public $subcategories;

	protected $db_fields = array(
								'name',
								'description',
								'brief',
								'file_manager_id',
								'date_created'
								);

	public function get_subcategories(){
		$sql = "SELECT * FROM subcategories WHERE category_id = '$this->category_id'";
		$result = $this->db->query($sql)->result_array();
		$this->load->model('admin/subcategory_model', 'subcategory_model');
		$this->subcategories = array();
		foreach ($result as $row){
			$subcategory = new Subcategory_model();
			$subcategory->set($row);
			$subcategory->get_files();
			$subcategory->get_products();
			$this->subcategories[] = $subcategory;
		}
	}
}
?>