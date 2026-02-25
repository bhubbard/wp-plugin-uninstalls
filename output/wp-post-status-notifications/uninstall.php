<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_post_status_post_types');
delete_site_option('wp_post_status_post_types');
delete_option('wp_post_status_groups');
delete_site_option('wp_post_status_groups');
delete_option('wp_post_status_rules');
delete_site_option('wp_post_status_rules');
delete_option('wp_post_status_email');
delete_site_option('wp_post_status_email');

