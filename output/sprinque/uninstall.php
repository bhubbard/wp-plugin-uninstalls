<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sprinque_seller');
delete_site_option('sprinque_seller');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('sprinque_available_countries');
delete_site_option('sprinque_available_countries');
delete_option('woocommerce_wpm_srinque_pay_settings');
delete_site_option('woocommerce_wpm_srinque_pay_settings');
delete_option('logs_sprinque');
delete_site_option('logs_sprinque');
delete_option('sprinque_available_payment_terms');
delete_site_option('sprinque_available_payment_terms');

// Clear Cron Jobs
wp_clear_scheduled_hook('sprinque_retry_capture_request');
wp_clear_scheduled_hook('sprinque_update_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'merchant_buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'merchant_buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'merchant_buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'merchant_buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buyer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buyer_id' ) );

