<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_billing_field_salutation');
delete_site_option('woocommerce_enable_billing_field_salutation');
delete_option('woocommerce_enable_shipping_field_salutation');
delete_site_option('woocommerce_enable_shipping_field_salutation');
delete_option('woocommerce_salutation_field_type');
delete_site_option('woocommerce_salutation_field_type');
delete_option('woocommerce_salutation_options');
delete_site_option('woocommerce_salutation_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_salutation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_salutation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_salutation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_salutation' ) );

