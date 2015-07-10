<?

$config['general']['admin'] = array('home_controller' => 'admin/x/',
									'user_session' => 'user',
									'start_page' => 'product/show_list',
									'login_page' => 'admin/user/login',
									'login_logo' => 'logo.png',
									'admin_logo' => 'logo.png'
									);

$config['general']['admin']['sections'] = array(
									//'user' =>array('url' => '#user/show_list', 'name' => 'Clientes', 'admin_only' => true, 'icon' => 'fa-user'),
									'banner' =>array('url' => '#banner/show_list', 'name' => 'Banners', 'admin_only' => true, 'icon' => 'fa-desktop'),
									'category' =>array('url' => '#category/show_list', 'name' => 'Categorias', 'admin_only' => true, 'icon' => 'fa-list'),
									'subcategory' =>array('url' => '#subcategory/show_list', 'name' => 'Sub Categorias', 'admin_only' => true, 'icon' => 'fa-th-list'),
									'product' =>array('url' => '#product/show_list', 'name' => 'Productos', 'admin_only' => true, 'icon' => 'fa-flask'),
									'color' =>array('url' => '#color/show_list', 'name' => 'Colores', 'admin_only' => true, 'icon' => 'fa-female'),
									'blog' =>array('url' => '#blog/show_list', 'name' => 'Blog', 'admin_only' => true, 'icon' => 'fa-rss'),
									'configuration' =>array('url' => '#configuration/show_list', 'name' => 'configuration', 'admin_only' => true, 'icon' => 'fa-rss'),
									);

$config['general']['admin']['table_icons'] = array(	'details' => 'fa fa-eye',
													'save' => 'fa fa-pencil',
													'edit' => 'fa fa-pencil',
													'files' => 'fa fa-file-text-o',
													'delete' => 'fa fa-trash-o');

foreach(glob( dirname(__FILE__)."/../modules_config/*.php") as $filename)
{
    include $filename;
}

?>