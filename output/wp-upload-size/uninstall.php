<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpus_file_size');
delete_site_option('wpus_file_size');
delete_option('file_size');
delete_site_option('file_size');

