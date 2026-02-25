<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_awp_services');
delete_site_option('wp_awp_services');
delete_option('wp_awp_options');
delete_site_option('wp_awp_options');
delete_option('wp_awp_lock');
delete_site_option('wp_awp_lock');
delete_option('wp_awp_failed_ip');
delete_site_option('wp_awp_failed_ip');
delete_option('wp_awp_locked_ip');
delete_site_option('wp_awp_locked_ip');

