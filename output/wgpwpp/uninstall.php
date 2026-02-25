<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgpwpp_wp_cache');
delete_site_option('wgpwpp_wp_cache');
delete_option('wgpwpp_cdn_cache');
delete_site_option('wgpwpp_cdn_cache');
delete_option('wgpwpp_rating_dismissed');
delete_site_option('wgpwpp_rating_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-flashes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wgpwpp_reports');
delete_site_option('wgpwpp_reports');
delete_option('wgpwpp_activation_time');
delete_site_option('wgpwpp_activation_time');
delete_option('wplang');
delete_site_option('wplang');
delete_option('site_name');
delete_site_option('site_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('wgpwpp_cache_delete_expired');

