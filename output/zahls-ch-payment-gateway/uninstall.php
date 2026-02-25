<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_zahls_settings');
delete_site_option('woocommerce_zahls_settings');
delete_option('woocommerce_zahls_description');
delete_site_option('woocommerce_zahls_description');
delete_option('woocommerce_zahls_instance');
delete_site_option('woocommerce_zahls_instance');
delete_option('woocommerce_zahls_sid');
delete_site_option('woocommerce_zahls_sid');
delete_option('woocommerce_zahls_prefix');
delete_site_option('woocommerce_zahls_prefix');
delete_option('woocommerce_zahls_logos');
delete_site_option('woocommerce_zahls_logos');
delete_option('woocommerce_zahls_subscriptions_title');
delete_site_option('woocommerce_zahls_subscriptions_title');
delete_option('woocommerce_zahls_subscriptions_user_desc');
delete_site_option('woocommerce_zahls_subscriptions_user_desc');
delete_option('woocommerce_zahls_subscription_logos');
delete_site_option('woocommerce_zahls_subscription_logos');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_accept_manual_renewals' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zahls_auth_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zahls_auth_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zahls_auth_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zahls_auth_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zahls_gateway_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zahls_gateway_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zahls_gateway_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zahls_gateway_id' ) );

