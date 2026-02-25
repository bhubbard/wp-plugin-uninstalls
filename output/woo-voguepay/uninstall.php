<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vpwoo_extra_charge');
delete_site_option('vpwoo_extra_charge');
delete_option('vpwoo_extra_charge_title');
delete_site_option('vpwoo_extra_charge_title');
delete_option('vpwoo_extra_charge_type');
delete_site_option('vpwoo_extra_charge_type');
delete_option('vpwoo_extra_charge_amount');
delete_site_option('vpwoo_extra_charge_amount');
delete_option('vpwoo_extra_charge_percentage');
delete_site_option('vpwoo_extra_charge_percentage');
delete_option('vpwoo_extra_charge_threshold');
delete_site_option('vpwoo_extra_charge_threshold');
delete_option('vpwoo_extra_charge_maximum');
delete_site_option('vpwoo_extra_charge_maximum');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_woo-voguepay-plugin_settings');
delete_site_option('woocommerce_woo-voguepay-plugin_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'message' ) );

