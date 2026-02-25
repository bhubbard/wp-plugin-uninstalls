<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bfw_db_version');
delete_site_option('bfw_db_version');
delete_option('woocommerce_billplz_settings');
delete_site_option('woocommerce_billplz_settings');
delete_option('bfw_api_key_state');
delete_site_option('bfw_api_key_state');
delete_option('bfw_collection_id_state');
delete_site_option('bfw_collection_id_state');
delete_option('bfw_payment_order_collection_id_state');
delete_site_option('bfw_payment_order_collection_id_state');
delete_option('billplz_fpx_banks');
delete_site_option('billplz_fpx_banks');
delete_option('billplz_fpx_banks_last');
delete_site_option('billplz_fpx_banks_last');

// Delete Transients
delete_transient('bfw_get_payment_gateways');
delete_site_transient('bfw_get_payment_gateways');
delete_transient('bfw_get_collection_gateways');
delete_site_transient('bfw_get_collection_gateways');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bfw_bill_url_%', '_site_transient_bfw_bill_url_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bfw_3_21_7_fix');
delete_site_transient('bfw_3_21_7_fix');
delete_transient('bfw_3_22_0_fix');
delete_site_transient('bfw_3_22_0_fix');

// Clear Cron Jobs
wp_clear_scheduled_hook('bfw_bill_inquiry');
wp_clear_scheduled_hook('bfw_check_refund_payment_order');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_transaction_id' ) );

