<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Color_model extends Simple_data_model
{

  public $db_index = 'color_id';
  public $db_table = 'colors';

	protected $db_fields = array(
								'name',
								'tone',
								'subtone',
								'category',
								'file_manager_id',
								'active',
								'date_created',
								);
}
?>