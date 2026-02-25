<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_crypto_checkout_settings');
delete_site_option('woocommerce_crypto_checkout_settings');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('transactions');
delete_site_option('transactions');
delete_option('gpcrypto_deferred_admin_notices');
delete_site_option('gpcrypto_deferred_admin_notices');
delete_option('gpcrypto_version');
delete_site_option('gpcrypto_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

