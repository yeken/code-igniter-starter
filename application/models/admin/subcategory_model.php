<?
require_once(dirname(__FILE__)."/../simple_data_model.php");

class Subcategory_model extends Simple_data_model
{

    public $db_index = 'subcategory_id';
    public $db_table = 'subcategories';
    public $products;

		protected $db_fields = array(
									'category',
									'category_id',
									'name',
									'brief',
									'file_manager_id',
									'active',
									'date_created'
									);

		protected function pre_save()
		{
			$this->load->model('admin/category_model', 'category_model');
			$category = new Category_model();
			$category->get($this->category_id);
			$this->set_field('category', $category->name);
		}

		public function get_products(){
			$sql = "SELECT * FROM products WHERE subcategory_id = '$this->subcategory_id'";
			$result = $this->db->query($sql)->result_array();
			$this->load->model('admin/product_model', 'product_model');
			$this->products = array();
			foreach ($result as $row){
				$product = new Product_model();
				$product->set($row);
				$product->get_files();
				$this->products[] = $product;
			}
		}
}
?>