<?

$module_name = 'blog';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/blog',
											'main_model' => 'admin/blog_model',
										 	'module_label' => 'Post',
											'module_unit' => 'Posts',
										 );

$config['modules'][$module_name]['fields'] = array(

										'name' => array(	'label' => 'Nombre',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'description'=> array(	'label' => 'Detalle',
															'type' => 'textarea',
															'class' => 'summernote',
															'validation' => 'required',
															'visibility' => 'save|details'
														),
										'main_image' => array(	'label' => 'Imagen Principal',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'description' => 'Tamaño: 630x350.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'category' => array( 'label' => 'Categoria',
																'type' => 'select',
																'options' => array(
																					0 => array("value" => "Consejo", "label" => "Consejo"),
																					1 => array("value" => "Tendencia", "label" => "Tendencia"),
																					),
																'visibility' => 'details|save|list',
																),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'posts_list' => array('url' => '#blog/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																'add_post' => array('url' => '#blog/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar ".$config['modules'][$module_name]['module_unit']));

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
																'dialog' => 'Borrar post?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>