<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cppw_email_info');
delete_site_option('cppw_email_info');
delete_option('cppw_hide_shipping_address');
delete_site_option('cppw_hide_shipping_address');
delete_option('cppw_instructions');
delete_site_option('cppw_instructions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'flexible_shipping_methods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'betrs_shipping_options-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cppw_checkout_default_empty');
delete_site_option('cppw_checkout_default_empty');
delete_option('cppw_nearby_points');
delete_site_option('cppw_nearby_points');
delete_option('cppw_total_points');
delete_site_option('cppw_total_points');
delete_option('cppw_mapbox_public_token');
delete_site_option('cppw_mapbox_public_token');
delete_option('cppw_google_api_key');
delete_site_option('cppw_google_api_key');
delete_option('cppw_display_phone');
delete_site_option('cppw_display_phone');
delete_option('cppw_display_schedule');
delete_site_option('cppw_display_schedule');
delete_option('cppw_points_last_update_try_datetime');
delete_site_option('cppw_points_last_update_try_datetime');
delete_option('cppw_points');
delete_site_option('cppw_points');
delete_option('cppw_points_last_update_datetime');
delete_site_option('cppw_points_last_update_datetime');
delete_option('cppw_points_last_update_server');
delete_site_option('cppw_points_last_update_server');

// Delete Transients
delete_transient('webdados_dpd_portugal_pro_nag');
delete_site_transient('webdados_dpd_portugal_pro_nag');
delete_transient('webdados_dpd_pickup_pro_nag');
delete_site_transient('webdados_dpd_pickup_pro_nag');

// Clear Cron Jobs
wp_clear_scheduled_hook('cppw_update_pickup_list');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_was_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_was_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_was_shipping_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_was_shipping_method' ) );

