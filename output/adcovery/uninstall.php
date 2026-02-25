<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adcovery_last_update_at');
delete_site_option('adcovery_last_update_at');
delete_option('adcovery_last_update_method');
delete_site_option('adcovery_last_update_method');
delete_option('adcovery_enabled');
delete_site_option('adcovery_enabled');
delete_option('adcovery_last_error_msg');
delete_site_option('adcovery_last_error_msg');
delete_option('adcovery_website_id');
delete_site_option('adcovery_website_id');
delete_option('adcovery_api_key');
delete_site_option('adcovery_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'adcovery_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_adcovery_cron');

