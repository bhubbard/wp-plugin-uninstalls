<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('givepayments_secret_key');
delete_site_option('givepayments_secret_key');
delete_option('givepayments_settings');
delete_site_option('givepayments_settings');
delete_option('givepayments_environment');
delete_site_option('givepayments_environment');
delete_option('givepayments_production_api_key');
delete_site_option('givepayments_production_api_key');
delete_option('givepayments_sandbox_api_key');
delete_site_option('givepayments_sandbox_api_key');
delete_option('givepayments_merchant_id');
delete_site_option('givepayments_merchant_id');
delete_option('givepayments_webhook_set_production');
delete_site_option('givepayments_webhook_set_production');
delete_option('givepayments_webhook_set_test');
delete_site_option('givepayments_webhook_set_test');
delete_option('givepayments_image_url');
delete_site_option('givepayments_image_url');
delete_option('givepayments_merchant_name');
delete_site_option('givepayments_merchant_name');
delete_option('givepayments_can_process_money');
delete_site_option('givepayments_can_process_money');
delete_option('givepayments_order_status');
delete_site_option('givepayments_order_status');
delete_option('woocommerce_givepayments_settings');
delete_site_option('woocommerce_givepayments_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_givepayments_payment_initiated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_givepayments_payment_initiated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_givepayments_payment_initiated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_givepayments_payment_initiated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_givepayments_payment_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_givepayments_payment_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_givepayments_payment_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_givepayments_payment_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_givepayments_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_givepayments_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_givepayments_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_givepayments_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_givepayments_merchant_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_givepayments_merchant_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_givepayments_merchant_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_givepayments_merchant_name' ) );

