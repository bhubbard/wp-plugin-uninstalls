<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_sardex_b2b_payment_enabled');
delete_site_option('wc_sardex_b2b_payment_enabled');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('wc_sardex_username');
delete_site_option('wc_sardex_username');
delete_option('wc_sardex_password');
delete_site_option('wc_sardex_password');
delete_option('wc_sardex_sandbox_enabled');
delete_site_option('wc_sardex_sandbox_enabled');
delete_option('wc_sardex_bisoo_payment_enabled');
delete_site_option('wc_sardex_bisoo_payment_enabled');
delete_option('wc_sardex_bisoo_recharge_enabled');
delete_site_option('wc_sardex_bisoo_recharge_enabled');

// Delete Transients
delete_transient('transient-sardex-bisoo-recharge-error');
delete_site_transient('transient-sardex-bisoo-recharge-error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sardex_ticket_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sardex_ticket_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sardex_ticket_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sardex_ticket_number' ) );

