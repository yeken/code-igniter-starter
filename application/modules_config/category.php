<?

$module_name = 'category';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/category',
											'main_model' => 'admin/category_model',
										 	'module_label' => 'Categorias',
											'module_unit' => 'Category',
										 );

$config['modules'][$module_name]['fields'] = array(

										'name' => array(	'label' => 'Nombre',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'brief'=> array(	'label' => 'Resumen',
															'type' => 'textarea',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'description'=> array(	'label' => 'Detalle',
															'type' => 'textarea',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'header_image' => array(	'label' => 'Imagen header',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'categories_list' => array('url' => '#category/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																);

$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'edit' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/',
																),

																);

$config['modules'][$module_name]['datatable_actions'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'edit' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/'),
											);
?>