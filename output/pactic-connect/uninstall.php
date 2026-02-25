<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pactic_connect__home_delivery_settings');
delete_site_option('pactic_connect__home_delivery_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_shipping_price_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pactic_connect__parcel_point_settings');
delete_site_option('pactic_connect__parcel_point_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pactic_connect__status');
delete_site_option('pactic_connect__status');
delete_option('pactic_connect__debug');
delete_site_option('pactic_connect__debug');
delete_option('pactic_connect__parcel_point_display_type');
delete_site_option('pactic_connect__parcel_point_display_type');
delete_option('pactic_connect__google_map_api_key');
delete_site_option('pactic_connect__google_map_api_key');
delete_option('pactic_connect__country_codes');
delete_site_option('pactic_connect__country_codes');
delete_option('pactic_connect__save_parcel_points_sync_date');
delete_site_option('pactic_connect__save_parcel_points_sync_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_sync_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_sync_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pactic_connect__country_codes_sync_date');
delete_site_option('pactic_connect__country_codes_sync_date');
delete_option('pactic_connect__country_codes_sync_status');
delete_site_option('pactic_connect__country_codes_sync_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_shipping_cod_price_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pactic_connect__cod_payment_methods');
delete_site_option('pactic_connect__cod_payment_methods');

// Delete Transients
delete_transient('pactic_connect__welcome_notice');
delete_site_transient('pactic_connect__welcome_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('pactic_connect__save_parcel_points');
wp_clear_scheduled_hook('pactic_connect__country_codes');

