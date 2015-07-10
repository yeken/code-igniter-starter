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

	public function post_get()
	{
		$this->get_related();
	}

	public function record_count() {
        return $this->db->count_all("blog");
    }
 
    public function fetch_posts($limit, $start) {
        $this->db->limit($limit, $start);
        $query = $this->db->get("blog");
 
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
   }
}
?>