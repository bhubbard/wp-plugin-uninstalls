<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_post_nav_options');
delete_site_option('wp_post_nav_options');
delete_option('wp_post_nav_version');
delete_site_option('wp_post_nav_version');

// Delete Transients
delete_transient('wp-post-nav');
delete_site_transient('wp-post-nav');

