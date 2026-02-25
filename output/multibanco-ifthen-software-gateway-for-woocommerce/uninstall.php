<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_callback_email_sent' ) );
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
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_gateway_methods' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_gateways' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_multibanco_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_multibanco_ifthen_for_woocommerce_settings');
delete_option('woocommerce_mbway_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_mbway_ifthen_for_woocommerce_settings');
delete_option('woocommerce_payshop_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_payshop_ifthen_for_woocommerce_settings');
delete_option('woocommerce_creditcard_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_creditcard_ifthen_for_woocommerce_settings');
delete_option('woocommerce_cofidispay_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_cofidispay_ifthen_for_woocommerce_settings');
delete_option('woocommerce_gateway_ifthen_ifthen_for_woocommerce_settings');
delete_site_option('woocommerce_gateway_ifthen_ifthen_for_woocommerce_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('multibanco_last_incremental_expire_ref');
delete_site_option('multibanco_last_incremental_expire_ref');
delete_option('woocommerce_checkout_pay_endpoint');
delete_site_option('woocommerce_checkout_pay_endpoint');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ifthen_for_woocommerce_callback_email_sent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_ifthen_hourly_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_newmethod_notice_dismiss_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_newmethod_notice_dismiss_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_newmethod_notice_dismiss_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_newmethod_notice_dismiss_until' ) );

