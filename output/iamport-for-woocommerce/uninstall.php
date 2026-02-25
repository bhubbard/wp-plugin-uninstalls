<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_iamport_sdk_version');
delete_site_option('woocommerce_iamport_sdk_version');
delete_option('iamport_user_code');
delete_site_option('iamport_user_code');
delete_option('iamport_rest_key');
delete_site_option('iamport_rest_key');
delete_option('iamport_rest_secret');
delete_site_option('iamport_rest_secret');
delete_option('woocommerce_iamport_strip_line_feed_in_address');
delete_site_option('woocommerce_iamport_strip_line_feed_in_address');
delete_option('woocommerce_iamport_app_scheme');
delete_site_option('woocommerce_iamport_app_scheme');
delete_option('_iamport_customer_prefix');
delete_site_option('_iamport_customer_prefix');
delete_option('woocommerce_iamport_refund_status_label');
delete_site_option('woocommerce_iamport_refund_status_label');
delete_option('woocommerce_iamport_exchange_status_label');
delete_site_option('woocommerce_iamport_exchange_status_label');
delete_option('woocommerce_iamport_awaiting_vbank_status_label');
delete_site_option('woocommerce_iamport_awaiting_vbank_status_label');
delete_option('woocommerce_iamport_card_max_quota');
delete_site_option('woocommerce_iamport_card_max_quota');
delete_option('woocommerce_iamport_custom_status_as_paid');
delete_site_option('woocommerce_iamport_custom_status_as_paid');
delete_option('woocommerce_iamport_eximbay_settings');
delete_site_option('woocommerce_iamport_eximbay_settings');
delete_option('woocommerce_iamport_subscription_quota_description');
delete_site_option('woocommerce_iamport_subscription_quota_description');
delete_option('_iamport_rsa_keyphrase');
delete_site_option('_iamport_rsa_keyphrase');
delete_option('_iamport_rsa_private_key');
delete_site_option('_iamport_rsa_private_key');
delete_option('woocommerce_iamport_subscription_checking_amount');
delete_site_option('woocommerce_iamport_subscription_checking_amount');
delete_option('woocommerce_iamport_auto_complete');
delete_site_option('woocommerce_iamport_auto_complete');
delete_option('woocommerce_iamport_exchange_capable');
delete_site_option('woocommerce_iamport_exchange_capable');
delete_option('woocommerce_iamport_exchange_limit');
delete_site_option('woocommerce_iamport_exchange_limit');
delete_option('woocommerce_iamport_refund_capable');
delete_site_option('woocommerce_iamport_refund_capable');
delete_option('woocommerce_iamport_refund_limit');
delete_site_option('woocommerce_iamport_refund_limit');
delete_option('woocommerce_iamport_naverpay_ext_settings');
delete_site_option('woocommerce_iamport_naverpay_ext_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'customer_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'customer_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'customer_uid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'customer_uid' ) );

