<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_no_base_permalink_flush');
delete_site_option('wp_no_base_permalink_flush');
delete_option('wp_no_base_permalink');
delete_site_option('wp_no_base_permalink');
delete_option('wp_no_base_permalink_version');
delete_site_option('wp_no_base_permalink_version');

