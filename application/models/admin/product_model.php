<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Product_model extends Simple_data_model
{

    public $db_index = 'product_id';
    public $db_table = 'products';

	protected $db_fields = array(
								'name',
								'description',
								'brief',
								'position',
								'subcategory',
								'file_manager_id',
								'active',
								'date_created',
								'subcategory_id'
								);


	protected function pre_save()
	{
		$this->load->model('admin/subcategory_model', 'subcategory_model');
		$subcategory = new Subcategory_model();
		$subcategory->get($this->subcategory_id);
		$this->set_field('subcategory', $subcategory->name);
	}
}
?>