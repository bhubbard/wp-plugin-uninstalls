<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phpmydirectory_table_prefix');
delete_site_option('phpmydirectory_table_prefix');
delete_option('phpmydirectory_folder');
delete_site_option('phpmydirectory_folder');

