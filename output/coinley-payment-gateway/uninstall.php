<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_coinleywp_settings');
delete_site_option('woocommerce_coinleywp_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('coinleywp_needs_onboarding');
delete_site_option('coinleywp_needs_onboarding');
delete_option('coinleywp_activation_redirect');
delete_site_option('coinleywp_activation_redirect');
delete_option('coinleywp_onboarding_dismissed');
delete_site_option('coinleywp_onboarding_dismissed');
delete_option('coinleywp_merchant_wallets_full');
delete_site_option('coinleywp_merchant_wallets_full');
delete_option('coinleywp_enabled_networks');
delete_site_option('coinleywp_enabled_networks');

// Delete Transients
delete_transient('coinleywp_merchant_wallets');
delete_site_transient('coinleywp_merchant_wallets');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_usd', '_site_transient_%_usd' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

