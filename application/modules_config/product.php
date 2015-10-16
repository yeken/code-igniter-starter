<?

$module_name = 'product';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/product',
											'main_model' => 'admin/product_model',
										 	'module_label' => 'Productos',
											'module_unit' => 'Producto',
										 );

$config['modules'][$module_name]['fields'] = array(

										'name' => array(	'label' => 'Nombre',
															'type' => 'text',
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
										'brief'=> array(	'label' => 'Resumen',
															'type' => 'textarea',
															'class' => '',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'description'=> array(	'label' => 'Detalle',
															'type' => 'textarea',
															'class' => 'summernote',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'main_image' => array(	'label' => 'Imagen Principal',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'description' => 'Tamaño: 345x345.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'detail_image' => array(	'label' => 'Imagen Detalle',
																	'type' => 'image',
																	'tag' => 'detail_image',
																	'description' => 'Tamaño: 345x345.',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'image_gallery' => array(	'label' => 'Galería de Imágenes',
																	'type' => 'image',
																	'validation' => '',
																	'visibility' => 'media_gallery',
																	),
										'subcategory' => array(	'label' => 'Subcategoria',
															'type' => 'text',
															'class' => 'title',
															'visibility' => 'details|list'
														),
										'subcategory_id'	=> array(	'label' => 'Categoria',
																'type' => 'select',
																'validation' => 'required',
																'visibility' => 'save',
																'source_table' => 'subcategories',
																'source_condition' => "",
																'source_index_id' => 'subcategory_id',
																'source_fields' => array('name')
																),
										'colors' => array('label' => 'Colores',
															'type' => 'multiselect',
															'source_index_id' => 'color_id',
															'source_relation_table' => 'products_colors',
															'source_fields' => array('category','name'),
															'source_table' => 'colors',
															'validation' => '',
															'visibility' => 'save|details',
														),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
														),	
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'products_list' => array('url' => '#product/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Listado de ".$config['modules'][$module_name]['module_label']),
																'add_product' => array('url' => '#product/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar ".$config['modules'][$module_name]['module_unit']));

$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'edit' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/',
																),
																'media_gallery' => array( 'label' => 'Galer&iacute;a',
																'url' => '#'.$module_name.'/media_gallery/image/'),
																);

$config['modules'][$module_name]['datatable_actions'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'edit' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/'),
											'media_gallery' => array( 'label' => 'Galer&iacute;a',
																	  'url' => '#'.$module_name.'/media_gallery/image/'),
											'delete' => array( 	'label' => 'Borrar',
																'dialog' => 'Borrar producto?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>