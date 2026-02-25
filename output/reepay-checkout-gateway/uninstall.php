<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('reepay_csv_data_migration_mobilepay_to_vipps');
delete_site_option('reepay_csv_data_migration_mobilepay_to_vipps');
delete_option('woocommerce_reepay_checkout_settings');
delete_site_option('woocommerce_reepay_checkout_settings');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woocommerce_reepay_webhook_%' ) );
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
delete_option('woocommerce_reepay_version');
delete_site_option('woocommerce_reepay_version');

// Delete Transients
delete_transient('reepay_api_action_error');
delete_site_transient('reepay_api_action_error');
delete_transient('reepay_api_action_success');
delete_site_transient('reepay_api_action_success');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_reepay_order_complete_should_settle_%', '_site_transient_reepay_order_complete_should_settle_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_reepay_invoice_%', '_site_transient_reepay_invoice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('reepay_mobilepay_gateway_settings_saved_notice');
delete_site_transient('reepay_mobilepay_gateway_settings_saved_notice');
delete_transient('reepay_mobilepay_subscriptions_gateway_settings_saved_notice');
delete_site_transient('reepay_mobilepay_subscriptions_gateway_settings_saved_notice');
delete_transient('gateways_reepay');
delete_site_transient('gateways_reepay');
delete_transient('reepay_webhook_settings_secret');
delete_site_transient('reepay_webhook_settings_secret');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reepay_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reepay_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reepay_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reepay_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reepay_enable_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reepay_enable_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reepay_enable_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reepay_enable_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reepay_minimum_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reepay_minimum_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reepay_minimum_age' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reepay_minimum_age' ) );

