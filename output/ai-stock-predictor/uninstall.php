<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aistpr_api_settings');
delete_site_option('aistpr_api_settings');
delete_option('aistpr_prediction_settings');
delete_site_option('aistpr_prediction_settings');
delete_option('aistpr_general_settings');
delete_site_option('aistpr_general_settings');
delete_option('aistpr_notification_settings');
delete_site_option('aistpr_notification_settings');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('aistpr_default_lead_time');
delete_site_option('aistpr_default_lead_time');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aistpr_prediction_%', '_site_transient_aistpr_prediction_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aistpr_recent_predictions');
delete_site_transient('aistpr_recent_predictions');
delete_transient('aistpr_stock_statistics');
delete_site_transient('aistpr_stock_statistics');
delete_transient('aistpr_total_products');
delete_site_transient('aistpr_total_products');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aistpr_predictions_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aistpr_predictions_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aistpr_predictions_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aistpr_predictions_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aistpr_lead_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aistpr_lead_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aistpr_lead_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aistpr_lead_time' ) );

