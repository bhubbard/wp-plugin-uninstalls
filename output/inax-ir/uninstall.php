<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inax_options');
delete_site_option('inax_options');
delete_option('inax_payment_gateway');
delete_site_option('inax_payment_gateway');
delete_option('inax_do_activation');
delete_site_option('inax_do_activation');
delete_option('inax_db_version');
delete_site_option('inax_db_version');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('inax_version');
delete_site_option('inax_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_current_woo_wallet_balance' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_current_woo_wallet_balance' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_current_woo_wallet_balance' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_current_woo_wallet_balance' ) );

