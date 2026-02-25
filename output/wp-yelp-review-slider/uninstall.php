<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpyelp_yelp_settings');
delete_site_option('wpyelp_yelp_settings');
delete_option('wpyelp_hidden_reviews');
delete_site_option('wpyelp_hidden_reviews');
delete_option('wpyelp_options');
delete_site_option('wpyelp_options');
delete_option('wpfbr_options');
delete_site_option('wpfbr_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpyelp_daily_event');

