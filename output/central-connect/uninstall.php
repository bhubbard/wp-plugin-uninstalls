<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boldgrid_api_key');
delete_site_option('boldgrid_api_key');
delete_option('bg_connect_configs');
delete_site_option('bg_connect_configs');
delete_option('bglib_configs');
delete_site_option('bglib_configs');
delete_option('boldgrid_connect_provider');
delete_site_option('boldgrid_connect_provider');
delete_option('boldgrid_connect_hide_menu');
delete_site_option('boldgrid_connect_hide_menu');
delete_option('boldgrid_connect_analytics');
delete_site_option('boldgrid_connect_analytics');

