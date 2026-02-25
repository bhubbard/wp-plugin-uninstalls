<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('torod_enabled_cities');
delete_site_option('torod_enabled_cities');
delete_option('torod_enabled_states');
delete_site_option('torod_enabled_states');
delete_option('torod_payment_gateway');
delete_site_option('torod_payment_gateway');
delete_option('status_radio');
delete_site_option('status_radio');
delete_option('torod_status_settings');
delete_site_option('torod_status_settings');
delete_option('torod_wp_all_settings');
delete_site_option('torod_wp_all_settings');
delete_option('torod_token');
delete_site_option('torod_token');
delete_option('torod_ordermappingstatus');
delete_site_option('torod_ordermappingstatus');
delete_option('torod_enabled_countries');
delete_site_option('torod_enabled_countries');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('torod_demo_account');
delete_site_option('torod_demo_account');
delete_option('torod_log_mode');
delete_site_option('torod_log_mode');
delete_option('torod_location_data');
delete_site_option('torod_location_data');
delete_option('torod_version');
delete_site_option('torod_version');

// Delete Transients
delete_transient('torod_webhook_test');
delete_site_transient('torod_webhook_test');

// Clear Cron Jobs
wp_clear_scheduled_hook('torod_daily_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'torod_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'torod_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'torod_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'torod_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cart_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cart_weight_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cart_weight_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cart_weight_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cart_weight_type' ) );

