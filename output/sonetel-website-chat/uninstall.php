<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('wp_sonetel_accountId');
delete_site_option('wp_sonetel_accountId');
delete_option('wp_sonetel_activated');
delete_site_option('wp_sonetel_activated');
delete_option('wp_sonetel_bar_activated');
delete_site_option('wp_sonetel_bar_activated');
delete_option('wp_sonetel_window_close');
delete_site_option('wp_sonetel_window_close');
delete_option('wp_sonetel_window_reload');
delete_site_option('wp_sonetel_window_reload');

