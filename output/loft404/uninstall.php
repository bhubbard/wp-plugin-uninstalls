<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loft404_mode');
delete_site_option('loft404_mode');
delete_option('loft404_page_id');
delete_site_option('loft404_page_id');
delete_option('loft404_plugin_version');
delete_site_option('loft404_plugin_version');

