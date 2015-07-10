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

										'url_facebook' => array('label' => 'Facebook URL',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details|list'
																),

										'url_twitter' => array('label' => 'Twitter URL',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details|list'
																),

										'url_googleplus' => array('label' => 'Google Plus URL',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details'
																),

										'url_youtube' => array('label' => 'Youtube URL',
																'type' => 'text',
																'validation' => '',
																'visibility' => 'edit|details'
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
																);


$config['modules'][$module_name]['top_menu_actions'] = array( 	'configuration_list' => array('url' => '#'.$module_name.'/details/1', 'class_name' => 'configuration', 'method' => 'show_list', 'icon' => "ui-icon-clipboard", 'label' => "Ver configuración"),
												);


$config['modules'][$module_name]['main_model_tabs'] = array( 	'details' => array( 'label' => 'Detalle',
														'url' => '#'.$module_name.'/details/'),
									'edit' => array( 	'label' => 'Editar',
														'url' => '#'.$module_name.'/edit/'),
)
?>