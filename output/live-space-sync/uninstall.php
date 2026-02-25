<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_msnsync_url');
delete_site_option('wp_msnsync_url');
delete_option('wp_msnsync_password');
delete_site_option('wp_msnsync_password');
delete_option('wp_msnsync_enable');
delete_site_option('wp_msnsync_enable');
delete_option('wp_msnsync_cook');
delete_site_option('wp_msnsync_cook');
delete_option('wp_msnsync_publish');
delete_site_option('wp_msnsync_publish');
delete_option('wp_msnsync_delete');
delete_site_option('wp_msnsync_delete');
delete_option('wp_msnsync_full');
delete_site_option('wp_msnsync_full');
delete_option('wp_msnsync_msg');
delete_site_option('wp_msnsync_msg');
delete_option('wp_msnsync_title');
delete_site_option('wp_msnsync_title');
delete_option('wp_msnsync_more');
delete_site_option('wp_msnsync_more');
delete_option('wp_msnsync_id');
delete_site_option('wp_msnsync_id');
delete_option('wp_msnsync_exclude');
delete_site_option('wp_msnsync_exclude');

