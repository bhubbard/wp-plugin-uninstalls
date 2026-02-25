<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_myfastapp_external_api_uri');
delete_site_option('plugin_myfastapp_external_api_uri');
delete_option('plugin_myfastapp_live_config');
delete_site_option('plugin_myfastapp_live_config');
delete_option('plugin_myfastapp_app_config');
delete_site_option('plugin_myfastapp_app_config');
delete_option('plugin_myfastapp_menu_item');
delete_site_option('plugin_myfastapp_menu_item');
delete_option('plugin_myfastapp_installed');
delete_site_option('plugin_myfastapp_installed');

