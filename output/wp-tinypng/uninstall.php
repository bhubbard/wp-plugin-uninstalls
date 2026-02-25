<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_tinypng_duplicate');
delete_site_option('wp_tinypng_duplicate');
delete_option('wp_tinypng_debug');
delete_site_option('wp_tinypng_debug');
delete_option('wp_tinypng_children');
delete_site_option('wp_tinypng_children');
delete_option('wp_tinypng_api');
delete_site_option('wp_tinypng_api');

