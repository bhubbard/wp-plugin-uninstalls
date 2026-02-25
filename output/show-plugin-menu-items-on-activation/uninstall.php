<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spmioa_menu_before_plugin_activation');
delete_site_option('spmioa_menu_before_plugin_activation');
delete_option('spmioa_submenu_before_plugin_activation');
delete_site_option('spmioa_submenu_before_plugin_activation');

