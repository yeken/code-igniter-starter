<?php
class tree {

	// Structure table and fields
	protected $table	= "";
	protected $fields	= array(
			"id"		=> false,
			"parent_id"	=> false,
			"position"	=> false,
			"left"		=> false,
			"right"		=> false,
			"level"		=> false
		);

	// Constructor
	function __construct($config = array()) {
		
		$table = isset($config['table']) ? $config['table'] : "tree";
		$fields = isset($config['fields']) ? $config['fields'] : array();
		$this->ci =& get_instance();

		$this->table = $table;
		if(!count($fields)) {
			foreach($this->fields as $k => &$v) { $v = $k; }
		}
		else {
			foreach($fields as $key => $field) {
				switch($key) {
					case "id":
					case "parent_id":
					case "position":
					case "left":
					case "right":
					case "level":
						$this->fields[$key] = $field;
						break;
				}
			}
		}
		$this->fields['id'] = isset($config['id']) ? $config['id'] : $this->fields['id'];
		// Database
		$this->ci->load->library('tree_database', '', 'tree_database');
	}

	function get_table()
	{
		return $this->table;
	}

	function show_list()
	{
		$this->ci->load->view('admin/common/inc.tree.php', $this->ci->data);	
	}

	function _get_node($id) {
		$this->ci->tree_database->query("SELECT `".implode("` , `", $this->fields)."` FROM `".$this->table."` WHERE `".$this->fields["id"]."` = ".(int) $id);
		$this->ci->tree_database->nextr();
		return $this->ci->tree_database->nf() === 0 ? false : $this->ci->tree_database->get_row("assoc");
	}
	
	function _get_tree($id = 1)
	{
		return $this->_get_children($id, true);	
	}
	
	function _get_children($id, $recursive = false) {
		$children = array();
		if($recursive) {
			$node = $this->_get_node($id);
			$this->ci->tree_database->query("SELECT `".implode("` , `", $this->fields)."` FROM `".$this->table."` WHERE `".$this->fields["left"]."` >= ".(int) $node[$this->fields["left"]]." AND `".$this->fields["right"]."` <= ".(int) $node[$this->fields["right"]]." ORDER BY `".$this->fields["left"]."` ASC");
		}
		else {
			$this->ci->tree_database->query("SELECT `".implode("` , `", $this->fields)."` FROM `".$this->table."` WHERE `".$this->fields["parent_id"]."` = ".(int) $id." ORDER BY `".$this->fields["position"]."` ASC");
		}
		while($this->ci->tree_database->nextr()) $children[$this->ci->tree_database->f($this->fields["id"])] = $this->ci->tree_database->get_row("assoc");
		return $children;
	}
	function _get_path($id) {
		$node = $this->_get_node($id);
		$path = array();
		if(!$node === false) return false;
		$this->ci->tree_database->query("SELECT `".implode("` , `", $this->fields)."` FROM `".$this->table."` WHERE `".$this->fields["left"]."` <= ".(int) $node[$this->fields["left"]]." AND `".$this->fields["right"]."` >= ".(int) $node[$this->fields["right"]]);
		while($this->ci->tree_database->nextr()) $path[$this->ci->tree_database->f($this->fields["id"])] = $this->ci->tree_database->get_row("assoc");
		return $path;
	}

	function _create($parent, $position) {
		return $this->_move(0, $parent, $position);
	}
	function _remove($id) {
		if((int)$id === 1) { return false; }
		$data = $this->_get_node($id);
		$lft = (int)$data[$this->fields["left"]];
		$rgt = (int)$data[$this->fields["right"]];
		$dif = $rgt - $lft + 1;

		// deleting node and its children
		$this->ci->tree_database->query("" . 
			"DELETE FROM `".$this->table."` " . 
			"WHERE `".$this->fields["left"]."` >= ".$lft." AND `".$this->fields["right"]."` <= ".$rgt
		);
		// shift left indexes of nodes right of the node
		$this->ci->tree_database->query("".
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["left"]."` = `".$this->fields["left"]."` - ".$dif." " . 
			"WHERE `".$this->fields["left"]."` > ".$rgt
		);
		// shift right indexes of nodes right of the node and the node's parents
		$this->ci->tree_database->query("" . 
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["right"]."` = `".$this->fields["right"]."` - ".$dif." " . 
			"WHERE `".$this->fields["right"]."` > ".$lft
		);

		$pid = (int)$data[$this->fields["parent_id"]];
		$pos = (int)$data[$this->fields["position"]];

		// Update position of siblings below the deleted node
		$this->ci->tree_database->query("" . 
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["position"]."` = `".$this->fields["position"]."` - 1 " . 
			"WHERE `".$this->fields["parent_id"]."` = ".$pid." AND `".$this->fields["position"]."` > ".$pos
		);
		return true;
	}
	function _move($id, $ref_id, $position = 0, $is_copy = false) {
		if((int)$ref_id === 0 || (int)$id === 1) { return false; }
		$sql		= array();						// Queries executed at the end
		$node		= $this->_get_node($id);		// Node data
		$nchildren	= $this->_get_children($id);	// Node children
		$ref_node	= $this->_get_node($ref_id);	// Ref node data
		$rchildren	= $this->_get_children($ref_id);// Ref node children
		$ndif = 2;
		$node_ids = array(-1);
		if($node !== false) {
			$node_ids = array_keys($this->_get_children($id, true));
			// TODO: should be !$is_copy && , but if copied to self - screws some right indexes
			if(in_array($ref_id, $node_ids)) return false;
			$ndif = $node[$this->fields["right"]] - $node[$this->fields["left"]] + 1;
		}
		if($position >= count($rchildren)) {
			$position = count($rchildren);
		}

		// Not creating or copying - old parent is cleaned
		if($node !== false && $is_copy == false) {
			$sql[] = "" . 
				"UPDATE `".$this->table."` " . 
					"SET `".$this->fields["position"]."` = `".$this->fields["position"]."` - 1 " . 
				"WHERE " . 
					"`".$this->fields["parent_id"]."` = ".$node[$this->fields["parent_id"]]." AND " . 
					"`".$this->fields["position"]."` > ".$node[$this->fields["position"]];
			$sql[] = "" . 
				"UPDATE `".$this->table."` " . 
					"SET `".$this->fields["left"]."` = `".$this->fields["left"]."` - ".$ndif." " . 
				"WHERE `".$this->fields["left"]."` > ".$node[$this->fields["right"]];
			$sql[] = "" . 
				"UPDATE `".$this->table."` " . 
					"SET `".$this->fields["right"]."` = `".$this->fields["right"]."` - ".$ndif." " . 
				"WHERE " . 
					"`".$this->fields["right"]."` > ".$node[$this->fields["left"]]." AND " . 
					"`".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ";
		}
		// Preparing new parent
		$sql[] = "" . 
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["position"]."` = `".$this->fields["position"]."` + 1 " . 
			"WHERE " . 
				"`".$this->fields["parent_id"]."` = ".$ref_id." AND " . 
				"`".$this->fields["position"]."` >= ".$position." " . 
				( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");

		$ref_ind = $ref_id === 0 ? (int)$rchildren[count($rchildren) - 1][$this->fields["right"]] + 1 : (int)$ref_node[$this->fields["right"]];
		$ref_ind = max($ref_ind, 1);

		$self = ($node !== false && !$is_copy && (int)$node[$this->fields["parent_id"]] == $ref_id && $position > $node[$this->fields["position"]]) ? 1 : 0;
		foreach($rchildren as $k => $v) {
			if($v[$this->fields["position"]] - $self == $position) {
				$ref_ind = (int)$v[$this->fields["left"]];
				break;
			}
		}
		if($node !== false && !$is_copy && $node[$this->fields["left"]] < $ref_ind) {
			$ref_ind -= $ndif;
		}

		$sql[] = "" . 
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["left"]."` = `".$this->fields["left"]."` + ".$ndif." " . 
			"WHERE " . 
				"`".$this->fields["left"]."` >= ".$ref_ind." " . 
				( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");
		$sql[] = "" . 
			"UPDATE `".$this->table."` " . 
				"SET `".$this->fields["right"]."` = `".$this->fields["right"]."` + ".$ndif." " . 
			"WHERE " . 
				"`".$this->fields["right"]."` >= ".$ref_ind." " . 
				( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");

		$ldif = $ref_id == 0 ? 0 : $ref_node[$this->fields["level"]] + 1;
		$idif = $ref_ind;
		if($node !== false) {
			$ldif = $node[$this->fields["level"]] - ($ref_node[$this->fields["level"]] + 1);
			$idif = $node[$this->fields["left"]] - $ref_ind;
			if($is_copy) {
				$sql[] = "" . 
					"INSERT INTO `".$this->table."` (" . 
						"`".$this->fields["parent_id"]."`, " . 
						"`".$this->fields["position"]."`, " . 
						"`".$this->fields["left"]."`, " . 
						"`".$this->fields["right"]."`, " . 
						"`".$this->fields["level"]."`" . 
					") " . 
						"SELECT " . 
							"".$ref_id.", " . 
							"`".$this->fields["position"]."`, " . 
							"`".$this->fields["left"]."` - (".($idif + ($node[$this->fields["left"]] >= $ref_ind ? $ndif : 0))."), " . 
							"`".$this->fields["right"]."` - (".($idif + ($node[$this->fields["left"]] >= $ref_ind ? $ndif : 0))."), " . 
							"`".$this->fields["level"]."` - (".$ldif.") " . 
						"FROM `".$this->table."` " . 
						"WHERE " . 
							"`".$this->fields["id"]."` IN (".implode(",", $node_ids).") " . 
						"ORDER BY `".$this->fields["level"]."` ASC";
			}
			else {
				$sql[] = "" . 
					"UPDATE `".$this->table."` SET " . 
						"`".$this->fields["parent_id"]."` = ".$ref_id.", " . 
						"`".$this->fields["position"]."` = ".$position." " . 
					"WHERE " . 
						"`".$this->fields["id"]."` = ".$id;
				$sql[] = "" . 
					"UPDATE `".$this->table."` SET " . 
						"`".$this->fields["left"]."` = `".$this->fields["left"]."` - (".$idif."), " . 
						"`".$this->fields["right"]."` = `".$this->fields["right"]."` - (".$idif."), " . 
						"`".$this->fields["level"]."` = `".$this->fields["level"]."` - (".$ldif.") " . 
					"WHERE " . 
						"`".$this->fields["id"]."` IN (".implode(",", $node_ids).") ";
			}
		}
		else {
			$sql[] = "" . 
				"INSERT INTO `".$this->table."` (" . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."`, " . 
					"`".$this->fields["left"]."`, " . 
					"`".$this->fields["right"]."`, " . 
					"`".$this->fields["level"]."` " . 
					") " . 
				"VALUES (" . 
					$ref_id.", " . 
					$position.", " . 
					$idif.", " . 
					($idif + 1).", " . 
					$ldif. 
				")";
		}
		foreach($sql as $q) { $this->ci->tree_database->query($q); }
		$ind = $this->ci->tree_database->insert_id();
		if($is_copy) $this->_fix_copy($ind, $position);
		return $node === false || $is_copy ? $ind : true;
	}
	function _fix_copy($id, $position) {
		$node = $this->_get_node($id);
		$children = $this->_get_children($id, true);

		$map = array();
		for($i = $node[$this->fields["left"]] + 1; $i < $node[$this->fields["right"]]; $i++) {
			$map[$i] = $id;
		}
		foreach($children as $cid => $child) {
			if((int)$cid == (int)$id) {
				$this->ci->tree_database->query("UPDATE `".$this->table."` SET `".$this->fields["position"]."` = ".$position." WHERE `".$this->fields["id"]."` = ".$cid);
				continue;
			}
			$this->ci->tree_database->query("UPDATE `".$this->table."` SET `".$this->fields["parent_id"]."` = ".$map[(int)$child[$this->fields["left"]]]." WHERE `".$this->fields["id"]."` = ".$cid);
			for($i = $child[$this->fields["left"]] + 1; $i < $child[$this->fields["right"]]; $i++) {
				$map[$i] = $cid;
			}
		}
	}

	function _reconstruct() {
		$this->ci->tree_database->query("" . 
			"CREATE TEMPORARY TABLE `temp_tree` (" . 
				"`".$this->fields["id"]."` INTEGER NOT NULL, " . 
				"`".$this->fields["parent_id"]."` INTEGER NOT NULL, " . 
				"`". $this->fields["position"]."` INTEGER NOT NULL" . 
			") type=HEAP"
		);
		$this->ci->tree_database->query("" . 
			"INSERT INTO `temp_tree` " . 
				"SELECT " . 
					"`".$this->fields["id"]."`, " . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."` " . 
				"FROM `".$this->table."`"
		);

		$this->ci->tree_database->query("" . 
			"CREATE TEMPORARY TABLE `temp_stack` (" . 
				"`".$this->fields["id"]."` INTEGER NOT NULL, " . 
				"`".$this->fields["left"]."` INTEGER, " . 
				"`".$this->fields["right"]."` INTEGER, " . 
				"`".$this->fields["level"]."` INTEGER, " . 
				"`stack_top` INTEGER NOT NULL, " . 
				"`".$this->fields["parent_id"]."` INTEGER, " . 
				"`".$this->fields["position"]."` INTEGER " . 
			") type=HEAP"
		);
		$counter = 2;
		$this->ci->tree_database->query("SELECT COUNT(*) FROM temp_tree");
		$this->ci->tree_database->nextr();
		$maxcounter = (int) $this->ci->tree_database->f(0) * 2;
		$currenttop = 1;
		$this->ci->tree_database->query("" . 
			"INSERT INTO `temp_stack` " . 
				"SELECT " . 
					"`".$this->fields["id"]."`, " . 
					"1, " . 
					"NULL, " . 
					"0, " . 
					"1, " . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."` " . 
				"FROM `temp_tree` " . 
				"WHERE `".$this->fields["parent_id"]."` = 0"
		);
		$this->ci->tree_database->query("DELETE FROM `temp_tree` WHERE `".$this->fields["parent_id"]."` = 0");

		while ($counter <= $maxcounter) {
			$this->ci->tree_database->query("" . 
				"SELECT " . 
					"`temp_tree`.`".$this->fields["id"]."` AS tempmin, " . 
					"`temp_tree`.`".$this->fields["parent_id"]."` AS pid, " . 
					"`temp_tree`.`".$this->fields["position"]."` AS lid " . 
				"FROM `temp_stack`, `temp_tree` " . 
				"WHERE " . 
					"`temp_stack`.`".$this->fields["id"]."` = `temp_tree`.`".$this->fields["parent_id"]."` AND " . 
					"`temp_stack`.`stack_top` = ".$currenttop." " . 
				"ORDER BY `temp_tree`.`".$this->fields["position"]."` ASC LIMIT 1"
			);

			if ($this->ci->tree_database->nextr()) {
				$tmp = $this->ci->tree_database->f("tempmin");

				$q = "INSERT INTO temp_stack (stack_top, `".$this->fields["id"]."`, `".$this->fields["left"]."`, `".$this->fields["right"]."`, `".$this->fields["level"]."`, `".$this->fields["parent_id"]."`, `".$this->fields["position"]."`) VALUES(".($currenttop + 1).", ".$tmp.", ".$counter.", NULL, ".$currenttop.", ".$this->ci->tree_database->f("pid").", ".$this->ci->tree_database->f("lid").")";
				$this->ci->tree_database->query($q);
				$this->ci->tree_database->query("DELETE FROM `temp_tree` WHERE `".$this->fields["id"]."` = ".$tmp);
				$counter++;
				$currenttop++;
			}
			else {
				$this->ci->tree_database->query("" . 
					"UPDATE temp_stack SET " . 
						"`".$this->fields["right"]."` = ".$counter.", " . 
						"`stack_top` = -`stack_top` " . 
					"WHERE `stack_top` = ".$currenttop
				);
				$counter++;
				$currenttop--;
			}
		}

		$temp_fields = $this->fields;
		unset($temp_fields["parent_id"]);
		unset($temp_fields["position"]);
		unset($temp_fields["left"]);
		unset($temp_fields["right"]);
		unset($temp_fields["level"]);
		if(count($temp_fields) > 1) {
			$this->ci->tree_database->query("" . 
				"CREATE TEMPORARY TABLE `temp_tree2` " . 
					"SELECT `".implode("`, `", $temp_fields)."` FROM `".$this->table."` "
			);
		}
		$this->ci->tree_database->query("TRUNCATE TABLE `".$this->table."`");
		$this->ci->tree_database->query("" . 
			"INSERT INTO ".$this->table." (" . 
					"`".$this->fields["id"]."`, " . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."`, " . 
					"`".$this->fields["left"]."`, " . 
					"`".$this->fields["right"]."`, " . 
					"`".$this->fields["level"]."` " . 
				") " . 
				"SELECT " . 
					"`".$this->fields["id"]."`, " . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."`, " . 
					"`".$this->fields["left"]."`, " . 
					"`".$this->fields["right"]."`, " . 
					"`".$this->fields["level"]."` " . 
				"FROM temp_stack " . 
				"ORDER BY `".$this->fields["id"]."`"
		);
		if(count($temp_fields) > 1) {
			$sql = "" . 
				"UPDATE `".$this->table."` v, `temp_tree2` SET v.`".$this->fields["id"]."` = v.`".$this->fields["id"]."` ";
			foreach($temp_fields as $k => $v) {
				if($k == "id") continue;
				$sql .= ", v.`".$v."` = `temp_tree2`.`".$v."` ";
			}
			$sql .= " WHERE v.`".$this->fields["id"]."` = `temp_tree2`.`".$this->fields["id"]."` ";
			$this->ci->tree_database->query($sql);
		}
	}

	function _analyze() {
		$report = array();

		$this->ci->tree_database->query("" . 
			"SELECT " . 
				"`".$this->fields["left"]."` FROM `".$this->table."` s " . 
			"WHERE " . 
				"`".$this->fields["parent_id"]."` = 0 "
		);
		$this->ci->tree_database->nextr();
		if($this->ci->tree_database->nf() == 0) {
			$report[] = "[FAIL]\tNo root node.";
		}
		else {
			$report[] = ($this->ci->tree_database->nf() > 1) ? "[FAIL]\tMore than one root node." : "[OK]\tJust one root node.";
		}
		$report[] = ($this->ci->tree_database->f(0) != 1) ? "[FAIL]\tRoot node's left index is not 1." : "[OK]\tRoot node's left index is 1.";

		$this->ci->tree_database->query("" . 
			"SELECT " . 
				"COUNT(*) FROM `".$this->table."` s " . 
			"WHERE " . 
				"`".$this->fields["parent_id"]."` != 0 AND " . 
				"(SELECT COUNT(*) FROM `".$this->table."` WHERE `".$this->fields["id"]."` = s.`".$this->fields["parent_id"]."`) = 0 ");
		$this->ci->tree_database->nextr();
		$report[] = ($this->ci->tree_database->f(0) > 0) ? "[FAIL]\tMissing parents." : "[OK]\tNo missing parents.";

		$this->ci->tree_database->query("SELECT MAX(`".$this->fields["right"]."`) FROM `".$this->table."`");
		$this->ci->tree_database->nextr();
		$n = $this->ci->tree_database->f(0);
		$this->ci->tree_database->query("SELECT COUNT(*) FROM `".$this->table."`");
		$this->ci->tree_database->nextr();
		$c = $this->ci->tree_database->f(0);
		$report[] = ($n/2 != $c) ? "[FAIL]\tRight index does not match node count." : "[OK]\tRight index matches count.";

		$this->ci->tree_database->query("" . 
			"SELECT COUNT(`".$this->fields["id"]."`) FROM `".$this->table."` s " . 
			"WHERE " . 
				"(SELECT COUNT(*) FROM `".$this->table."` WHERE " . 
					"`".$this->fields["right"]."` < s.`".$this->fields["right"]."` AND " . 
					"`".$this->fields["left"]."` > s.`".$this->fields["left"]."` AND " . 
					"`".$this->fields["level"]."` = s.`".$this->fields["level"]."` + 1" . 
				") != " .
				"(SELECT COUNT(*) FROM `".$this->table."` WHERE " . 
					"`".$this->fields["parent_id"]."` = s.`".$this->fields["id"]."`" . 
				") "
			);
		$this->ci->tree_database->nextr();
		$report[] = ($this->ci->tree_database->f(0) > 0) ? "[FAIL]\tAdjacency and nested set do not match." : "[OK]\tNS and AJ match";

		return implode("<br />",$report);
	}

	function _dump($output = false) {
		$nodes = array();
		$this->ci->tree_database->query("SELECT * FROM ".$this->table." ORDER BY `".$this->fields["left"]."`");
		while($this->ci->tree_database->nextr()) $nodes[] = $this->ci->tree_database->get_row("assoc");
		if($output) {
			echo "<pre>";
			foreach($nodes as $node) {
				echo str_repeat("&#160;",(int)$node[$this->fields["level"]] * 2);
				echo $node[$this->fields["id"]]." (".$node[$this->fields["left"]].",".$node[$this->fields["right"]].",".$node[$this->fields["level"]].",".$node[$this->fields["parent_id"]].",".$node[$this->fields["position"]].")<br />";
			}
			echo str_repeat("-",40);
			echo "</pre>";
		}
		return $nodes;
	}
	function _drop() {
		$this->ci->tree_database->query("TRUNCATE TABLE `".$this->table."`");
		$this->ci->tree_database->query("" . 
				"INSERT INTO `".$this->table."` (" . 
					"`".$this->fields["id"]."`, " . 
					"`".$this->fields["parent_id"]."`, " . 
					"`".$this->fields["position"]."`, " . 
					"`".$this->fields["left"]."`, " . 
					"`".$this->fields["right"]."`, " . 
					"`".$this->fields["level"]."` " . 
					") " . 
				"VALUES (" . 
					"1, " . 
					"0, " . 
					"0, " . 
					"1, " . 
					"2, " . 
					"0 ". 
				")");
	}
}

class tree_json extends tree { 
	function __construct($config = array()) {
		parent::__construct($config);
		
		$this->add_fields = isset($config['add_fields']) ? $config['add_fields'] : array("title" => "title", "type" => "type");
		$this->fields = array_merge($this->fields, $this->add_fields);
	}

	function create_node($data) {
		$id = parent::_create((int)$data["id"], (int)$data["position"]);
		if($id) {
			$data["id"] = $id;
			$this->set_data($data);
			return  "{ \"status\" : 1, \"id\" : ".(int)$id." }";
		}
		return "{ \"status\" : 0 }";
	}
	function set_data($data) {
		if(count($this->add_fields) == 0) { return "{ \"status\" : 1 }"; }
		$s = "UPDATE `".$this->table."` SET `".$this->fields["id"]."` = `".$this->fields["id"]."` "; 
		foreach($this->add_fields as $k => $v) {
			if(isset($data[$k]))	$s .= ", `".$this->fields[$v]."` = \"".$this->ci->tree_database->escape($data[$k])."\" ";
			else					$s .= ", `".$this->fields[$v]."` = `".$this->fields[$v]."` ";
		}
		$s .= "WHERE `".$this->fields["id"]."` = ".(int)$data["id"];
		
		$this->ci->tree_database->query($s);
		return "{ \"status\" : 1 }";
	}
	function rename_node($data) { return $this->set_data($data); }

	function move_node($data) { 
		$id = parent::_move((int)$data["id"], (int)$data["ref"], (int)$data["position"], (int)$data["copy"]);
		if(!$id) return "{ \"status\" : 0 }";
		if((int)$data["copy"] && count($this->add_fields)) {
			$ids	= array_keys($this->_get_children($id, true));
			$data	= $this->_get_children((int)$data["id"], true);

			$i = 0;
			foreach($data as $dk => $dv) {
				$s = "UPDATE `".$this->table."` SET `".$this->fields["id"]."` = `".$this->fields["id"]."` "; 
				foreach($this->add_fields as $k => $v) {
					if(isset($dv[$k]))	$s .= ", `".$this->fields[$v]."` = \"".$this->ci->tree_database->escape($dv[$k])."\" ";
					else				$s .= ", `".$this->fields[$v]."` = `".$this->fields[$v]."` ";
				}
				$s .= "WHERE `".$this->fields["id"]."` = ".$ids[$i];
				$this->ci->tree_database->query($s);
				$i++;
			}
		}
		return "{ \"status\" : 1, \"id\" : ".$id." }";
	}
	function remove_node($data) {
		$id = parent::_remove((int)$data["id"]);
		return "{ \"status\" : 1 }";
	}
	function get_children($data) {
		$tmp = $this->_get_children((int)$data["id"]);
		
		if((int)$data["id"] === 1 && count($tmp) === 0) {
			$this->_create_default();
			$tmp = $this->_get_children((int)$data["id"]);
		}
		
		$result = array();
		if((int)$data["id"] === 0) return json_encode($result);
		foreach($tmp as $k => $v) {
			$result[] = array(
				"attr" => array("id" => "node_".$k, "rel" => $v[$this->fields["type"]]),
				"data" => $v[$this->fields["title"]],
				"state" => ((int)$v[$this->fields["right"]] - (int)$v[$this->fields["left"]] > 1) ? "closed" : ""
			);
		}
		
		return json_encode($result);
	}
	function search($data) {
		$this->ci->tree_database->query("SELECT `".$this->fields["left"]."`, `".$this->fields["right"]."` FROM `".$this->table."` WHERE `".$this->fields["title"]."` LIKE '%".$this->ci->tree_database->escape($data["search_str"])."%'");
		if($this->ci->tree_database->nf() === 0) return "[]";
		$q = "SELECT DISTINCT `".$this->fields["id"]."` FROM `".$this->table."` WHERE 0 ";
		while($this->ci->tree_database->nextr()) {
			$q .= " OR (`".$this->fields["left"]."` < ".(int)$this->ci->tree_database->f(0)." AND `".$this->fields["right"]."` > ".(int)$this->ci->tree_database->f(1).") ";
		}
		$result = array();
		$this->ci->tree_database->query($q);
		while($this->ci->tree_database->nextr()) { $result[] = "#node_".$this->ci->tree_database->f(0); }
		return json_encode($result);
	}

	function _create_default() {
		$this->_drop();
		
		$this->create_node(array(
			"id" => 1,
			"position" => 0,
			"title" => "Categor&iacute;as",
			"type" => "drive"
		));
	}
}

?>