<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paranoid911_check_database');
delete_site_option('paranoid911_check_database');
delete_option('paranoid911_check_filesystem');
delete_site_option('paranoid911_check_filesystem');
delete_option('paranoid911_file_method');
delete_site_option('paranoid911_file_method');
delete_option('paranoid911_check_interval');
delete_site_option('paranoid911_check_interval');

