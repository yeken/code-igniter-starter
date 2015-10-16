<?

$module_name = 'configuration';
$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/configuration',
											'main_model' => 'admin/configuration_model',
										 	'module_label' => 'Configuracion',
											'module_unit' => 'Item',
											'restrictions' => 'own_content'
										 );

$config['modules'][$module_name]['fields'] = array(

										'address' => array(	'label' => 'Direcci&oacute;n',
															'type' => 'text',
															'validation' => '',
															'visibility' => 'edit|details'
															),

										'telephone' => array('label' => 'Tel&eacute;fono',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details|list'
																),

										'text_about' => array('label' => 'Texto "Nosotros"',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => '',
																'visibility' => 'edit|details'
																),

										'text_issue_mundo' => array('label' => 'Texto "Issue en el mundo"',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => '',
																'visibility' => 'edit|details'
																),
										'text_consumer_rights' => array('label' => 'Texto "Derechos del consumidor"',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => '',
																'visibility' => 'edit|details'
																),
										'text_legal' => array('label' => 'Texto "Aviso Legal"',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => '',
																'visibility' => 'edit|details'
																),
										'text_privacy_policy' => array('label' => 'Texto "Politica de privacidad"',
																'type' => 'textarea',
																'class' => 'summernote',
																'validation' => '',
																'visibility' => 'edit|details'
																),
										'url_facebook' => array('label' => 'Facebook URL',
																'type' => 'text',
																'validation' => '',
																'description' => "ej: http://www.facebook.com/username",
																'visibility' => 'edit|details|list'
																),
										'url_twitter' => array('label' => 'Twitter URL',
																'type' => 'text',
																'validation' => '',
																'description' => "ej: http://www.twitter.com/username",
																'visibility' => 'edit|details|list'
																),
										'url_instagram' => array('label' => 'Instagram URL',
																'type' => 'text',
																'validation' => '',
																'description' => "ej: http://www.instagram.com/username",
																'visibility' => 'edit|details|list'
																),
										'url_youtube' => array('label' => 'Youtube URL',
																'type' => 'text',
																'validation' => '',
																'description' => "ej: http://www.youtube.com/username",
																'visibility' => 'edit|details|list'
																),

										'email' => array(		'label' => 'Email',
																'type' => 'text',
																'validation' => 'required',
																'visibility' => 'edit|details|list'
																),

										'form_emails' => array(	'label' => 'Emails recibo de formulario',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details|list'
																),
										'nosotros_desktop' => array(	'label' => '<i class="fa fa-desktop"></i> Imagen Desktop de Nosotros',
																'type' => 'image',
																'tag' => 'nosotros_desktop',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'nosotros_mobile' => array(	'label' => '<i class="fa fa-mobile"></i> Imagen Mobile de Nosotros',
																'type' => 'image',
																'tag' => 'nosotros_mobile',
																'description' => 'Tamaño: 768x230.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'contacto_desktop' => array(	'label' => '<i class="fa fa-desktop"></i> Imagen Desktop de Contacto',
																'type' => 'image',
																'tag' => 'contacto_desktop',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'contacto_mobile' => array(	'label' => '<i class="fa fa-mobile"></i> Imagen Mobile de Contacto',
																'type' => 'image',
																'tag' => 'contacto_mobile',
																'description' => 'Tamaño: 768x230.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'derechos_desktop' => array(	'label' => '<i class="fa fa-desktop"></i> Imagen Desktop de Derechos del Consumidor',
																'type' => 'image',
																'tag' => 'derechos_desktop',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'derechos_mobile' => array(	'label' => '<i class="fa fa-mobile"></i> Imagen Mobile de Derechos del Consumidor',
																'type' => 'image',
																'tag' => 'derechos_mobile',
																'description' => 'Tamaño: 768x230.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'legal_desktop' => array(	'label' => '<i class="fa fa-desktop"></i> Imagen Desktop de Aviso legal',
																'type' => 'image',
																'tag' => 'legal_desktop',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'legal_mobile' => array(	'label' => '<i class="fa fa-mobile"></i> Imagen Mobile de Aviso legal',
																'type' => 'image',
																'tag' => 'legal_mobile',
																'description' => 'Tamaño: 768x230.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'privacidad_desktop' => array(	'label' => '<i class="fa fa-desktop"></i> Imagen Desktop de Política de privacidad',
																'type' => 'image',
																'tag' => 'privacidad_desktop',
																'description' => 'Tamaño: 1920x600.',
																'validation' => '',
																'visibility' => 'details|save',
																),
										'privacidad_mobile' => array(	'label' => '<i class="fa fa-mobile"></i> Imagen Mobile de Política de privacidad',
																'type' => 'image',
																'tag' => 'privacidad_mobile',
																'description' => 'Tamaño: 768x230.',
																'validation' => '',
																'visibility' => 'details|save',
																),
																);


$config['modules'][$module_name]['top_menu_actions'] = array( 	'configuration_list' => array('url' => '#'.$module_name.'/details/1', 'class_name' => 'configuration', 'method' => 'show_list', 'icon' => "ui-icon-clipboard", 'label' => "Ver configuración"),
												);


$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
														'url' => '#'.$module_name.'/details/'),
									'edit' => array( 	'label' => 'Editar',
														'url' => '#'.$module_name.'/edit/'),
)
?>