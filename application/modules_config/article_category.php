<?
$module_name = 'article_category';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/article_category',
											'main_model' => 'admin/article_category_model',
										 	'module_label' => 'Categor&iacute;as',
											'module_unit' => 'Categor&iacute;a',
										 );

$config['modules'][$module_name]['list_type'] = 'datatable'; // default: datatable
$config['modules'][$module_name]['list_editable'] = true; // common administrator can insert and modify nodes

$config['modules'][$module_name]['two_panels'] = true;

$config['modules'][$module_name]['fields'] = array(	'title' => array(	'label' => 'Nombre',
														'type' => 'text',
														'validation' => 'required',
														'visibility' => 'save|details|list'
														),
													'active'	=> array(	'label' => 'Activo',
																			'type' => 'checkbox',
																			'value' => 1,
																			'visibility' => 'save|details|list'
														));

$config['modules'][$module_name]['top_menu_actions'] = array( 	'articles_list' => array('method' => 'article/show_list', 
																					   'url' => '#article/show_list', 
																					   'class_name' => 'article', 
																					   'icon' => "ui-icon-clipboard", 
																					   'label' => "Articulos"
																						),
																'add_article' => array('method' => 'article/create',  
																					   'url' => '#article/create' , 
																					   'class_name' => 'article' , 
																					   'icon' => "ui-icon-plusthick", 
																					   'label' => "Agregar Articulo"
																					   ),
																'articles_categories_list' => array('url' => '#article_category/show_list', 
																										'class_name' => 'article_categories', 
																										'method' => 'article_category/show_list', 
																										'icon' => "ui-icon-clipboard", 
																										'label' => "Categor&iacute;as"
																										),
																'articles_categories_create' => array('url' => '#article_category/create', 
																										  'class_name' => 'article_categories', 
																										  'method' => 'article_category/create', 
																										  'icon' => "ui-icon-clipboard", 
																										  'label' => "Agregar Categor&iacute;as"),
																'article_gruops_tree_list' => array('method' => '#article_group/show_list', 'class_name' => $module_name, 'icon' => "ui-icon-tree", 'label' => "Grupos"),
																'articles_groups_create' => array('url' => '#article_group/create', 
																										  'class_name' => 'article_groups', 
																										  'method' => 'article_group/create', 
																										  'icon' => "ui-icon-clipboard", 
																										  'label' => "Agregar Grupo"),
																);

$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
																					'url' => '#'.$module_name.'/details/'),
																'save' => array( 	'label' => 'Editar',
																					'url' => '#'.$module_name.'/edit/',
																					'tab' => 'details')
								);

$config['modules'][$module_name]['datatable_actions'] = array( 	'details' => array( 'label' => 'Detalle',
																					'url' => '#'.$module_name.'/details/'),
																'save' => array( 	'label' => 'Editar',
																					'url' => '#'.$module_name.'/edit/'),
																'delete' => array( 	'label' => 'Borrar',
																					'dialog' => 'Borrar este grupo?',
																					'url' => '#'.$module_name.'/delete/'),);



?>