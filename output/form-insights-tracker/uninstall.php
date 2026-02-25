<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7submittrack_count');
delete_site_option('cf7submittrack_count');
delete_option('cf7submittrack_date');
delete_site_option('cf7submittrack_date');
delete_option('cf7submittrack_delete_data_on_uninstall');
delete_site_option('cf7submittrack_delete_data_on_uninstall');

