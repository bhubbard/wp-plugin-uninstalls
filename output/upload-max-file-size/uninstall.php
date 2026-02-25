<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imagify_settings');
delete_site_option('imagify_settings');
delete_option('max_file_size');
delete_site_option('max_file_size');

