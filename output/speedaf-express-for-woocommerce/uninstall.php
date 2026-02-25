<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spf_speedaf_enable');
delete_site_option('spf_speedaf_enable');
delete_option('spf_speedaf_api_key');
delete_site_option('spf_speedaf_api_key');
delete_option('spf_speedaf_name');
delete_site_option('spf_speedaf_name');
delete_option('spf_speedaf_phone');
delete_site_option('spf_speedaf_phone');
delete_option('spf_speedaf_email');
delete_site_option('spf_speedaf_email');
delete_option('spf_speedaf_order_prefix');
delete_site_option('spf_speedaf_order_prefix');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('spf_speedaf_allow_opened');
delete_site_option('spf_speedaf_allow_opened');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

