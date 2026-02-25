<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mga_client_id');
delete_site_option('mga_client_id');
delete_option('mga_client_secret');
delete_site_option('mga_client_secret');
delete_option('mga_access_token');
delete_site_option('mga_access_token');
delete_option('mga_refresh_token');
delete_site_option('mga_refresh_token');
delete_option('mga_tracking_id');
delete_site_option('mga_tracking_id');
delete_option('mga_property_id');
delete_site_option('mga_property_id');
delete_option('mga_tracking_ids');
delete_site_option('mga_tracking_ids');
delete_option('mga_disable_tracking');
delete_site_option('mga_disable_tracking');
delete_option('mga_track_logged_users');
delete_site_option('mga_track_logged_users');
delete_option('mga_track_power_users');
delete_site_option('mga_track_power_users');
delete_option('meowapps_hide_ads');
delete_site_option('meowapps_hide_ads');
delete_option('mga_expires_at');
delete_site_option('mga_expires_at');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('force_sslverify');
delete_site_option('force_sslverify');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_serial' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('meowapps_hide_meowapps');
delete_site_option('meowapps_hide_meowapps');
delete_option('litespeed.conf.cache-rest');
delete_site_option('litespeed.conf.cache-rest');
delete_option('mwai_options');
delete_site_option('mwai_options');
delete_option('meowapps_news');
delete_site_option('meowapps_news');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rating_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('mga_message');
delete_site_transient('mga_message');
delete_transient('mga_error');
delete_site_transient('mga_error');

