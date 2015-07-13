<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Banner_model extends Simple_data_model
{

  public $db_index = 'banner_id';
  public $db_table = 'banners';

	protected $db_fields = array(
								'name',
								'description',
								'brief',
								'button',
								'file_manager_id',
								'active',
								'date_created',
								'banner_url'
								);
}
?>