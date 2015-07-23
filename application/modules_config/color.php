<?

$module_name = 'color';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/color',
											'main_model' => 'admin/color_model',
										 	'module_label' => 'Colores',
											'module_unit' => 'Color',
										 );

$config['modules'][$module_name]['fields'] = array(

										'name' => array(	'label' => 'Nombre',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'tone' => array(	'label' => 'Tono',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'subtone' => array(	'label' => 'Subtono',
															'type' => 'text',
															'class' => 'title',
															'validation' => '',
															'visibility' => 'save|details|list'
														),
										'main_image' => array(	'label' => 'Imagen Principal',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'description' => 'Tamaño: 360px x 200px.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'color_icon' => array(	'label' => 'Imagen del icono',
																	'type' => 'image',
																	'tag' => 'color_icon',
																	'description' => 'Tamaño: 100px x 100px.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'category' => array( 'label' => 'Categoria',
																	'type' => 'select',
																	'options' => array(
																						0 => array("value" => "naturales", "label" => "Naturales"),
																						1 => array("value" => "castaños", "label" => "Castaños"),
																						2 => array("value" => "cenizas", "label" => "Cenizas"),
																						3 => array("value" => "dorados", "label" => "Dorados"),
																						4 => array("value" => "cobres y caobas", "label" => "Cobres y caobas"),
																						),
																	'visibility' => 'details|save|list',
																	),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'colors_list' => array('url' => '#color/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																'add_color' => array('url' => '#color/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar ".$config['modules'][$module_name]['module_unit']));

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
																'dialog' => 'Borrar color?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>