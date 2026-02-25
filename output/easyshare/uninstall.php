<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyshare_icons_path');
delete_site_option('easyshare_icons_path');
delete_option('easyshare_mode');
delete_site_option('easyshare_mode');
delete_option('easyshare_title');
delete_site_option('easyshare_title');
delete_option('easyshare_bookmarktext');
delete_site_option('easyshare_bookmarktext');
delete_option('easyshare_class');
delete_site_option('easyshare_class');
delete_option('easyshare_position_article');
delete_site_option('easyshare_position_article');
delete_option('easyshare_position_page');
delete_site_option('easyshare_position_page');
delete_option('easyshare_custom_css');
delete_site_option('easyshare_custom_css');
delete_option('easyshare_services_liste');
delete_site_option('easyshare_services_liste');
delete_option('easyshare_services');
delete_site_option('easyshare_services');
delete_option('easyshare_test_mode');
delete_site_option('easyshare_test_mode');

