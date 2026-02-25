<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('montypay_recurring_schedules');
delete_site_option('montypay_recurring_schedules');
delete_option('woocommerce_montypay_hosted_payment_settings');
delete_site_option('woocommerce_montypay_hosted_payment_settings');
delete_option('woocommerce_montypay_hosted_apple_pay_gateway_settings');
delete_site_option('woocommerce_montypay_hosted_apple_pay_gateway_settings');
delete_option('woocommerce_montypay_s2s_payment_settings');
delete_site_option('woocommerce_montypay_s2s_payment_settings');
delete_option('woocommerce_montypay_stripe_payment_settings');
delete_site_option('woocommerce_montypay_stripe_payment_settings');
delete_option('woocommerce_montypay_wallets_payment_settings');
delete_site_option('woocommerce_montypay_wallets_payment_settings');

// Delete Transients
delete_transient('wc_admin_dashboard_counts');
delete_site_transient('wc_admin_dashboard_counts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_montypay_recurring_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_montypay_recurring_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_montypay_recurring_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_montypay_recurring_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_montypay_recurring_schedule_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_montypay_recurring_schedule_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_montypay_recurring_schedule_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_montypay_recurring_schedule_id' ) );

