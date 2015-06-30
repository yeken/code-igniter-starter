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
								'category',
								'file_manager_id',
								'active',
								'date_created'
								);
}
?>