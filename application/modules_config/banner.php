<?

$module_name = 'banner';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/banner',
											'main_model' => 'admin/banner_model',
										 	'module_label' => 'Banners',
											'module_unit' => 'Banner',
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
																'class' => '',
																'validation' => '',
																'visibility' => 'save|details|list'
															),
										'description'=> array(	'label' => 'Detalle',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => 'required',
																'visibility' => 'save|details|list'
															),
										'desktop_image' => array(	'label' => 'Imagen Desktop',
																'type' => 'image',
																'tag' => 'desktop_image',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
															),
										'mobile_image' => array(	'label' => 'Imagen Mobile',
																'type' => 'image',
																'tag' => 'mobile_image',
																'description' => 'Tamaño: Ancho Maximo 768px.',
																'validation' => '',
																'visibility' => 'details|save',
															),
										'button' => array( 'label' => 'Color de Boton',
																'type' => 'select',
																'options' => array(
																					0 => array("value" => "btn-bordeaux", "label" => "Bordeaux"),
																					1 => array("value" => "btn-black", "label" => "Negro"),
																					2 => array("value" => "btn-white", "label" => "Blanco"),
																					3 => array("value" => "btn-grey", "label" => "Gris"),
																					4 => array("value" => "btn-blue", "label" => "Azul"),
																					5 => array("value" => "btn-red", "label" => "Rojo"),
																					6 => array("value" => "btn-green", "label" => "Verde"),
																					),
																'visibility' => 'details|save',
																),
										'button_txt' => array( 'label' => 'Texto de Boton',
																'type' => 'select',
																'options' => array(
																					0 => array("value" => "txt-bordeaux", "label" => "Bordeaux"),
																					1 => array("value" => "txt-black", "label" => "Negro"),
																					2 => array("value" => "txt-white", "label" => "Blanco"),
																					3 => array("value" => "txt-grey", "label" => "Gris"),
																					4 => array("value" => "txt-blue", "label" => "Azul"),
																					5 => array("value" => "txt-red", "label" => "Rojo"),
																					6 => array("value" => "txt-green", "label" => "Verde"),
																					),
																'visibility' => 'details|save',
															),
										'banner_url' => array(	'label' => 'URL',
																'type' => 'text',
																'class' => 'title',
																'validation' => 'required',
																'visibility' => 'save|details'
																),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
															),
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'banners_list' => array('url' => '#banner/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																'add_banner' => array('url' => '#banner/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar ".$config['modules'][$module_name]['module_unit']));

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
																'dialog' => 'Borrar banner?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>