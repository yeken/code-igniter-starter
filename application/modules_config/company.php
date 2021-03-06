<?

$module_name = 'company';

$config['modules'][$module_name] = array(
										 	'controller_name' => 'admin/company',
											'main_model' => 'admin/company_model',
										 	'module_label' => 'Empresas',
											'module_unit' => 'Empresa',
										 );

$config['modules'][$module_name]['fields'] = array(	
										'name' => array(	'label' => 'Nombre',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'visibility' => 'save|details|list'
														),
										'namespace' => array(	'label' => 'Namespace',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required|alpha_dash',
															'description' => "Ej: miempresa. No puede contener espacios",
															'visibility' => 'save|details|list'
														),
										'no_logos' => array('label' => 'Quitar logos FF2014',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Quita la marca fantasy futbol.",
															'visibility' => 'save|details'
															),
										'multi_lang' => array('label' => 'Multilenguaje',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Habilita selector de idioma.",
															'visibility' => 'save|details'
															),
										'bio' => array('label' => 'Bio',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Habilita el campo bio",
															'visibility' => 'save|details'
															),
										'fantasy_logo' => array(	'label' => 'Logo Fantasy',
																	'type' => 'image',
																	'tag' => 'fantasy_logo',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'fantasy_logo_url' => array(	'label' => 'Logo Fantasy URL',
																	'type' => 'text',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										
										'username_field' => array(	'label' => 'Campo de usuario',
															'type' => 'text',
															'class' => 'title',
															'validation' => 'required',
															'description' => "Ej: email, nro. de empleado, etc.",
															'visibility' => 'save|details'
														),
										'users_activated' => array('label' => 'Habilitar usuarios',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Habilitar usuarios para comenzar el torneo.",
															'visibility' => 'save|details|list'
															),
										'register' => array('label' => 'Habilitar registros',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Se habilitará el registro de usuarios",
															'visibility' => 'save|details|list'
															),
										'confirm_email' => array('label' => 'Confirmar Email',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Se habilitará al usuario solo si confirmó la cuenta",
															'visibility' => 'save|details|list'
															),
										'register_domain' => array('label' => 'Dominio exclusivo de registro',
															'type' => 'text',
															
															'validation' => '',
															'description' => "Ej: miempresa.com.ar. Si no tiene dejar en blanco",
															'visibility' => 'save|details'
															),
										'first_login' => array('label' => 'Primer ingreso',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "No pedirá clave al primer ingreso.",
															'visibility' => 'save|details|list'
															),									
										'first_login_text'=> array(	'label' => 'Texto primer ingreso',
															'type' => 'textarea',
															'class' => 'summernote',
															'validation' => 'Referencia de que hacer si no existe en la base u otro asunto relacionado al primer ingreso',
															'visibility' => 'save|details'
														),
										'country'=> array(	'label' => 'País',
															'type' => 'select',
															'options' => array(0 => array("value" => "AR", "label" => "Argentina"),
																				1 => array("value" => "MX", "label" => "México"),
																				),
															'validation' => '',
															'visibility' => 'save|details|list'
														),
																		
										'main_image' => array(	'label' => 'Logo',
																	'type' => 'image',
																	'tag' => 'main_image',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'footer_image' => array(	'label' => 'Logo footer',
																	'type' => 'image',
																	'tag' => 'footer_image',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'how_to_text' => array(	'label' => 'Texto Como jugar',
																	'type' => 'textarea',
																	'class' => 'summernote',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										
										'how_to_image' => array(	'label' => 'Imagen Como jugar',
																	'type' => 'image',
																	'tag' => 'how_to_image',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'how_to_image_MX' => array(	'label' => 'Imagen Como jugar (MX)',
																	'type' => 'image',
																	'tag' => 'how_to_image_MX',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'how_to_image_PR' => array(	'label' => 'Imagen Como jugar (PR)',
																	'type' => 'image',
																	'tag' => 'how_to_image_PR',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'how_to_image_US' => array(	'label' => 'Imagen Como jugar (US)',
																	'type' => 'image',
																	'tag' => 'how_to_image_US',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'banner_header' => array('label' => 'Banner Header',
															'type' => 'image',
															'tag' => 'banner_header',
															'validation' => '',
															'description' => "468px x 60px",
															'visibility' => 'save|details'
														),
										'bg_image' => array('label' => 'Imagen fondo',
															'type' => 'image',
															'tag' => 'bg_image',
															'validation' => '',
															'description' => "",
															'visibility' => 'save|details'
														),
										'colors' => array(	'label' => 'Colores',
															'type' => 'script',
															'value' => '',
															'validation' => '',
															'visibility' => 'save|details'
															),
										'wall' => array(	'label' => 'Muro',
															'type' => 'checkbox',
															'value' => '1',
															'validation' => '',
															'description' => "Se incluirá el muro en el juego.",
															'visibility' => 'save|details'
															),
										'qualys' => array(	'label' => 'Pre Clasif',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Se incluría apuesta por preclasificados",
															'visibility' => 'save|details|list'
															),
										'qualys_close_date' => array(	'label' => 'Fecha de cierre clasificados',
															'type' => 'date_time',
															'value' => '2014-06-17 23:00:00',
															'validation' => '',
															'description' => "Fecha en la que se cierra la elección de pre clasificados",
															'visibility' => 'save|details|list'
															),
										'winners' => array(	'label' => 'Ganadores',
															'type' => 'checkbox',
															'value' => 0,
															'validation' => '',
															'description' => "Se incluría apuesta por ganadores 1er 2do y 3er puesto del torneo",
															'visibility' => 'save|details|list'
															),
										'winners_close_date' => array(	'label' => 'Fecha de cierre ganadores',
															'type' => 'date_time',
															'value' => '2014-06-26 23:00:00',
															'validation' => '',
															'description' => "Fecha en la que se cierra la elección de ganadores",
															'visibility' => 'save|details|list'
															),
										'badges' => array(	'label' => 'Badges',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Se incluirán los badges en el juego",
															'visibility' => 'save|details|list'
															),
										'badges_points' => array(	'label' => 'Punto badge',
															'type' => 'text',
															'value' => 15,
															'validation' => '',
															'description' => "Puntos que otorga un badge normalmente. Los especiales incluyen un multiplador (ej: valor normal 15, valor especial 15*4/3 = 20",
															'visibility' => 'save|details'
															),
										'friends_league' => array(	'label' => 'Amigos',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Habilita la liga de amigos",
															'visibility' => 'save|details'
															),
										'dept_league' => array(	'label' => 'Departamentos',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Habilita la liga por departamentos",
															'visibility' => 'save|details'
															),
										'branch_league' => array(	'label' => 'Sucursales',
															'type' => 'checkbox',
															'value' => 1,
															'validation' => '',
															'description' => "Habilita la liga por sucursales",
															'visibility' => 'save|details'
															),
										'branch_name' 	=> array(	'label' => 'Nombre Sucursal',
																	'type' => 'text',
																	'validation' => '',
																	'description' => "Nombre que se le da a las sucursales (oficinas, paises, etc)",
																	'visibility' => 'save|details'
																	),
										'branch_league_name' 	=> array(	'label' => 'Nombre Liga Sucursales',
																	'type' => 'text',
																	'validation' => '',
																	'description' => "Nombre que se le da a la liga intersucursales",
																	'visibility' => 'save|details'
																	),
										'tyc_doc' => array(	'label' => 'Terminos y Condiciones',
																	'type' => 'file',
																	'tag' => 'tyc_doc',
																	'validation' => '',
																	'visibility' => 'details|save',
																	),
										'active'	=> array(	'label' => 'Activo',
																'type' => 'checkbox',
																'value' => 1,
																'visibility' => 'save|details|list'
																)						
										);

$config['modules'][$module_name]['top_menu_actions'] = array( 	'list' => array('url' => '#'.$module_name.'/show_list','method' => 'show_list', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-clipboard", 'label' => "Lista"),
																'add' => array('url' => '#'.$module_name.'/create','method' => 'create', 'class_name' => $config['modules'][$module_name], 'icon' => "ui-icon-plusthick", 'label' => "Agregar"));

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
																'dialog' => 'Borrar empresa?',
											 					'url' => '#'.$module_name.'/delete/'),
											);
?>