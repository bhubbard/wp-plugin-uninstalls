<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('last_file_inspection');
delete_site_option('last_file_inspection');
delete_option('last_file_inspection_counter');
delete_site_option('last_file_inspection_counter');

