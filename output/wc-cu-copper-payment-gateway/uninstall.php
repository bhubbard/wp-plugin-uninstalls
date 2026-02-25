<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('copper_payment_gateway_ethereum_net');
delete_site_option('copper_payment_gateway_ethereum_net');
delete_option('copper_payment_gateway_infura_api_id');
delete_site_option('copper_payment_gateway_infura_api_id');
delete_option('copper_payment_gateway_copper_contract_address');
delete_site_option('copper_payment_gateway_copper_contract_address');
delete_option('copper_payment_gateway_copper_target_address');
delete_site_option('copper_payment_gateway_copper_target_address');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('copper_payment_gateway_copper_abi_array');
delete_site_option('copper_payment_gateway_copper_abi_array');
delete_option('copper_payment_gateway_gas_notice');
delete_site_option('copper_payment_gateway_gas_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'copper_payment_gateway_eth_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'copper_payment_gateway_tx' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'copper_payment_gateway_tx' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'copper_payment_gateway_tx' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'copper_payment_gateway_tx' ) );

