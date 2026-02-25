<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nusvg_db_version');
delete_site_option('nusvg_db_version');
delete_option('nusvg_plugin_version');
delete_site_option('nusvg_plugin_version');
delete_option('nusvg_expiration');
delete_site_option('nusvg_expiration');

