<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkdigital_fastshift_version_option');
delete_site_option('hkdigital_fastshift_version_option');
delete_option('woocommerce_payment-gateway-for-fastshift_settings');
delete_site_option('woocommerce_payment-gateway-for-fastshift_settings');
delete_option('hkdigital_language_payment_fastshift');
delete_site_option('hkdigital_language_payment_fastshift');
delete_option('language_payment_fastshift');
delete_site_option('language_payment_fastshift');
delete_option('hkdigital_payment-gateway-for-fastshift_verification_id');
delete_site_option('hkdigital_payment-gateway-for-fastshift_verification_id');
delete_option('hkdigtial_check_activation_fastshift');
delete_site_option('hkdigtial_check_activation_fastshift');
delete_option('hkdigital_dump');
delete_site_option('hkdigital_dump');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('cronCheckOrder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'OrderGuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'OrderGuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'OrderGuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'OrderGuid' ) );

