<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('name_directory_general_option');
delete_site_option('name_directory_general_option');
delete_option('name_directory_db_version');
delete_site_option('name_directory_db_version');

