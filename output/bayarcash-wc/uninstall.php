<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bayarcash_settings');
delete_site_option('woocommerce_bayarcash_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_bayarcash-wc_settings');
delete_site_option('woocommerce_bayarcash-wc_settings');
delete_option('bayarcash_enable_multi_merchant');
delete_site_option('bayarcash_enable_multi_merchant');
delete_option('bayarcash_enable_fpx_gateways');
delete_site_option('bayarcash_enable_fpx_gateways');
delete_option('bayarcash_additional_fpx');
delete_site_option('bayarcash_additional_fpx');
delete_option('bayarcash_enable_duitnow_gateways');
delete_site_option('bayarcash_enable_duitnow_gateways');
delete_option('bayarcash_additional_duitnow');
delete_site_option('bayarcash_additional_duitnow');
delete_option('woocommerce_directdebit-wc_settings');
delete_site_option('woocommerce_directdebit-wc_settings');
delete_option('woocommerce_duitnowboost-wc_settings');
delete_site_option('woocommerce_duitnowboost-wc_settings');
delete_option('woocommerce_duitnow-wc_settings');
delete_site_option('woocommerce_duitnow-wc_settings');
delete_option('woocommerce_duitnownets-wc_settings');
delete_site_option('woocommerce_duitnownets-wc_settings');
delete_option('woocommerce_duitnowqr-wc_settings');
delete_site_option('woocommerce_duitnowqr-wc_settings');
delete_option('woocommerce_duitnowqris-wc_settings');
delete_site_option('woocommerce_duitnowqris-wc_settings');
delete_option('woocommerce_duitnowqriswallet-wc_settings');
delete_site_option('woocommerce_duitnowqriswallet-wc_settings');
delete_option('woocommerce_duitnowshopee-wc_settings');
delete_site_option('woocommerce_duitnowshopee-wc_settings');
delete_option('woocommerce_linecredit-wc_settings');
delete_site_option('woocommerce_linecredit-wc_settings');

// Delete Transients
delete_transient('bayarcash_admin_notice');
delete_site_transient('bayarcash_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('bayarcash_wc_checkpayment');
wp_clear_scheduled_hook('bayarcash_wc_check_transaction');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bayarcash_wc_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bayarcash_wc_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bayarcash_wc_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bayarcash_wc_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bc_payment_intent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bc_payment_intent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bc_payment_intent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bc_payment_intent' ) );

