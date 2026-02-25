<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmufs_maximum_execution_time');
delete_site_option('tmufs_maximum_execution_time');
delete_option('max_file_size');
delete_site_option('max_file_size');

