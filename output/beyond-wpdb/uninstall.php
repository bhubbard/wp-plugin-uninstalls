<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beyond_wpdb_data_init_name');
delete_site_option('beyond_wpdb_data_init_name');
delete_option('beyond_wpdb_virtual_column_name');
delete_site_option('beyond_wpdb_virtual_column_name');

