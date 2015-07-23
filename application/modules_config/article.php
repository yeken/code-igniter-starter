<?

$module_name = 'article';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/article',
											'main_model' => 'admin/article_model',
										 	'module_label' => 'Art&iacute;culos',
											'module_unit' => 'Art&iacute;culo',
											// 'restrictions' => 'own_content',
										 );

$config['modules'][$module_name]['fields'] = array(	
										'date_event_start' => array(	'label' => 'Fecha',
																'type' => 'date_time',
																'validation' => '',
																'visibility' => 'save|details|list'
																),
										'category_id' => array( 'label' => 'Categorias',
																	'type' => 'select',
																	'validation' => 'required',
																	'visibility' => 'save',
																	'source_table' => 'articles_categories',
																	'source_index_id' => 'category_id',
																	'source_relation_table' => 'articles_categories_articles',
																	'source_fields' => array('title')
															),
										'categories_names' => array( 'label' => 'Categorias',
																'type' => 'text',
																'validation' => 'required',
																'visibility' => 'list|details',
																),
										'group_id' => array( 'label' => 'Grupos',
																	'type' => 'select',
																	'validation' => '',
																	'zero_option' => 'Sin grupo',
																	'visibility' => 'save',
																	'source_table' => 'articles_groups',
																	'source_index_id' => 'group_id',
																	'source_relation_table' => 'articles_groups_articles',
																	'source_fields' => array('title')
															),
										'groups_names' => array( 'label' => 'Grupos',
																'type' => 'text',
																'validation' => 'required',
																'visibility' => 'list|details',
																),
										'tags' => array( 'label' => 'Tags',
															'type' => 'text',
															'validation' => '',
															'description' => 'Agregar etiquetas separadas por coma',
															'visibility' => 'details|save',
															),
										'title' => array(	'label' => 'T&iacute;tulo',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
																),
										'brief' => array(		'label' => 'Resumen',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => 'required',
																'visibility' => 'save|details'
																),						
										'description' => array(	'label' => 'Descripci&oacute;n',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => 'required',
																'visibility' => 'save|details'
																),
										'web' => array(	'label' => 'Web',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'save|details'
																),
										'source' => array(	'label' => 'Fuente',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'save|details'
																),
										'image_portada' => array('label' => 'Imagen de listado',
																	'type' => 'image',
																	'tag' => 'image_list',
																	'validation' => '',
																	'visibility' => 'details|save'
																	),
										'image_details' => array('label' => 'Imagen detalle',
																'type' => 'image',
																'tag' => 'image_details',
																'validation' => '',
																'visibility' => 'details|save'
																),
										'show_image_details'	=> array(	'label' => 'Mostrar imagen en Detalle',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										'image_gallery' => array(	'label' => 'Galer&iacute;a de Fotos',
																	'type' => 'image',
																	'validation' => '',
																	'visibility' => 'media_gallery',
																	),
										/*'video' => array(	'label' => 'Video',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'save|details'
																),*/
										'show_agenda'	=> array(	'label' => 'Mostrar en Agenda',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										'show_insite'	=> array(	'label' => 'Mostrar en Sitio',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																));


$config['modules'][$module_name]['top_menu_actions'] = array( 'articles_list' => array('method' => 'show_list', 'url' => '#article/show_list', 'class_name' => 'article', 'icon' => "ui-icon-clipboard", 'label' => "Art&iacute;culos"),
																'add_article' => array('method' => 'create',  'url' => '#article/create' , 'class_name' => 'article' , 'icon' => "ui-icon-plusthick", 'label' => "Agregar Art&iacute;culo"),
																/*
																'article_categories_tree_list' => array('method' => '#article_category/show_list', 'class_name' => $module_name, 'icon' => "ui-icon-tree", 'label' => "Categor&iacute;as"),
																'articles_categories_create' => array('url' => '#article_category/create', 
																										  'class_name' => 'article_categories', 
																										  'method' => 'article_category/create', 
																										  'icon' => "ui-icon-clipboard", 
																										  'label' => "Agregar Categor&iacute;as"),
																*/
																'article_gruops_tree_list' => array('url' => '#article_group/show_list', 'method' => '#article_group/show_list', 'class_name' => $module_name, 'icon' => "ui-icon-tree", 'label' => "Grupos"),
																'articles_groups_create' => array('url' => '#article_group/create', 
																										  'class_name' => 'article_groups', 
																										  'method' => 'article_group/create', 
																										  'icon' => "ui-icon-clipboard", 
																										  'label' => "Agregar Grupo"),
																);


$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'edit' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/'),
											'media_gallery' => array( 	'label' => 'Galer&iacute;a',
								  			  	 						'url' => '#'.$module_name.'/media_gallery/image/'),
																);

$config['modules'][$module_name]['datatable_actions'] = array( 	'details' => array( 'label' => 'Detalle',
								  			  	 				'url' => '#'.$module_name.'/details/'),
											'save' => array( 	'label' => 'Editar',
											 					'url' => '#'.$module_name.'/edit/'),
											'delete' => array( 	'label' => 'Borrar',
																'dialog' => 'Borrar articulo?',
											 					'url' => '#'.$module_name.'/delete/'),
											);


?>