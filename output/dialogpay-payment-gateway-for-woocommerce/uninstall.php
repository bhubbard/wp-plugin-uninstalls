<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('woocommerce_dialogpay_settings');
delete_site_option('woocommerce_dialogpay_settings');
delete_option('woocommerce_dialogpay_enabled');
delete_site_option('woocommerce_dialogpay_enabled');
delete_option('woocommerce_dialogpay_title');
delete_site_option('woocommerce_dialogpay_title');
delete_option('woocommerce_dialogpay_description');
delete_site_option('woocommerce_dialogpay_description');
delete_option('woocommerce_dialogpay_merchant_id');
delete_site_option('woocommerce_dialogpay_merchant_id');
delete_option('woocommerce_dialogpay_payment_service_id');
delete_site_option('woocommerce_dialogpay_payment_service_id');
delete_option('woocommerce_dialogpay_database_name');
delete_site_option('woocommerce_dialogpay_database_name');
delete_option('woocommerce_dialogpay_dialogpay_user_name');
delete_site_option('woocommerce_dialogpay_dialogpay_user_name');
delete_option('woocommerce_dialogpay_dialogpay_user_password');
delete_site_option('woocommerce_dialogpay_dialogpay_user_password');
delete_option('woocommerce_dialogpay_public_key');
delete_site_option('woocommerce_dialogpay_public_key');
delete_option('woocommerce_dialogpay_private_key');
delete_site_option('woocommerce_dialogpay_private_key');
delete_option('woocommerce_dialogpay_base_url');
delete_site_option('woocommerce_dialogpay_base_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dialogpay_awaiting_webhook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dialogpay_awaiting_webhook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dialogpay_awaiting_webhook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dialogpay_awaiting_webhook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_dialogpay_event_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_dialogpay_event_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_dialogpay_event_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_dialogpay_event_%' ) );

