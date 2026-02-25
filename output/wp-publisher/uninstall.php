<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_publisher_host');
delete_site_option('wp_publisher_host');
delete_option('wp_publisher_user');
delete_site_option('wp_publisher_user');
delete_option('wp_publisher_pass');
delete_site_option('wp_publisher_pass');
delete_option('wp_publisher_port');
delete_site_option('wp_publisher_port');
delete_option('wp_publisher_active_mode');
delete_site_option('wp_publisher_active_mode');
delete_option('wp_publisher_remote_wp_content_dir');
delete_site_option('wp_publisher_remote_wp_content_dir');
delete_option('wp_publisher_token');
delete_site_option('wp_publisher_token');
delete_option('ftp_sync_port');
delete_site_option('ftp_sync_port');
delete_option('wp_publisher_outlandish_sync_secret');
delete_site_option('wp_publisher_outlandish_sync_secret');

