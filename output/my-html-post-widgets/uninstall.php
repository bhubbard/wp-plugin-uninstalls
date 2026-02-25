<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_myhl_box_code_top');
delete_site_option('wp_myhl_box_code_top');
delete_option('wp_myhl_box_code_bottom');
delete_site_option('wp_myhl_box_code_bottom');

