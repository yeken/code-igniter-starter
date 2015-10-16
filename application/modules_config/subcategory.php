<?

$module_name = 'subcategory';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/subcategory',
											'main_model' => 'admin/subcategory_model',
										 	'module_label' => 'Sub Categorias',
											'module_unit' => 'Subcategoria',
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
										'position' => array(	'label' => 'Orden',
															'type' => 'number',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'show_in_home'	=> array(	'label' => 'Mostrar en la home?',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										'category' => array(	'label' => 'Categoria',
															'type' => 'text',
															'class' => 'title',
															'visibility' => 'details|list'
														),
										'category_id'	=> array(	'label' => 'Categoria',
																'type' => 'select',
																'validation' => 'required',
																'visibility' => 'save',
																'source_table' => 'categories',
																'source_condition' => "",
																'source_index_id' => 'category_id',
																'source_fields' => array('name')
																),
										'main_image' => array(	'label' => 'Imagen Principal',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'description' => 'Tamaño: 260x260.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'header_image' => array('label' => 'Imagen del Header',
																'type' => 'image',
																'tag' => 'header_image',
																'description' => 'Tamaño: 1920×585.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'subcategories_list' => array('url' => '#subcategory/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																'add_subcategory' => array('url' => '#subcategory/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar ".$config['modules'][$module_name]['module_unit']));

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
											'delete' => array( 	'label' => 'Borrar',
																'dialog' => 'Borrar subcategoria?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>