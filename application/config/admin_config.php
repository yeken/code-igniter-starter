<?

$config['general']['admin'] = array('home_controller' => 'admin/x/',
									'user_session' => 'user',
									'start_page' => 'contact/show_list',
									'login_page' => 'admin/user/login',
									'login_logo' => 'logo.png',
									'admin_logo' => 'logo.png'
									);

$config['general']['admin']['sections'] = array(
									//'user' =>array('url' => '#user/show_list', 'name' => 'Clientes', 'admin_only' => true, 'icon' => 'fa-user'),
									'contact' =>array('url' => '#contact/show_list', 'name' => 'Contactos', 'admin_only' => true, 'icon' => 'fa-book'),
									'article_category' => array('url' => '#article_category/show_list', 'name' => 'article_category', 'admin_only' => true, 'icon' => 'fa-book'),
									'article' => array('url' => '#article/show_list', 'name' => 'ARTICULOS', 'admin_only' => true, 'icon' => 'fa-book'),
									'banner' =>array('url' => '#banner/show_list', 'name' => 'Banners', 'admin_only' => true, 'icon' => 'fa-photo'),
									'category' =>array('url' => '#category/show_list', 'name' => 'Categorias', 'admin_only' => true, 'icon' => 'fa-list'),
									'subcategory' =>array('url' => '#subcategory/show_list', 'name' => 'Sub Categorias', 'admin_only' => true, 'icon' => 'fa-th-list'),
									'product' =>array('url' => '#product/show_list', 'name' => 'Productos', 'admin_only' => true, 'icon' => 'fa-cube'),
									'color' =>array('url' => '#color/show_list', 'name' => 'Colores', 'admin_only' => true, 'icon' => 'fa-eyedropper'),
									'blog' =>array('url' => '#blog/show_list', 'name' => 'Blog', 'admin_only' => true, 'icon' => 'fa-rss'),
									'configuration' =>array('url' => '#configuration/show_list', 'name' => 'configuration', 'admin_only' => true, 'icon' => 'fa-gears'),
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