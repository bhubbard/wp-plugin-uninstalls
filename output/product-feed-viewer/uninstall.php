<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pfv_payment');
delete_site_option('pfv_payment');
delete_option('pfv_license');
delete_site_option('pfv_license');
delete_option('pfv_cache_timeout');
delete_site_option('pfv_cache_timeout');
delete_option('pfv_plugin_error');
delete_site_option('pfv_plugin_error');
delete_option('pfv_db_version');
delete_site_option('pfv_db_version');

