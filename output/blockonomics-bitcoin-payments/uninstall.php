<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blockonomics_api_key');
delete_site_option('blockonomics_api_key');
delete_option('blockonomics_bitcoin_discount');
delete_site_option('blockonomics_bitcoin_discount');
delete_option('blockonomics_callback_secret');
delete_site_option('blockonomics_callback_secret');
delete_option('blockonomics_db_version');
delete_site_option('blockonomics_db_version');
delete_option('blockonomics_margin');
delete_site_option('blockonomics_margin');
delete_option('blockonomics_timeperiod');
delete_site_option('blockonomics_timeperiod');
delete_option('blockonomics_api_updated');
delete_site_option('blockonomics_api_updated');
delete_option('blockonomics_bch');
delete_site_option('blockonomics_bch');
delete_option('blockonomics_btc');
delete_site_option('blockonomics_btc');
delete_option('blockonomics_underpayment_slack');
delete_site_option('blockonomics_underpayment_slack');
delete_option('blockonomics_usdt_testnet');
delete_site_option('blockonomics_usdt_testnet');
delete_option('blockonomics_lite');
delete_site_option('blockonomics_lite');
delete_option('blockonomics_nojs');
delete_site_option('blockonomics_nojs');
delete_option('blockonomics_network_confirmation');
delete_site_option('blockonomics_network_confirmation');
delete_option('blockonomics_partial_payments');
delete_site_option('blockonomics_partial_payments');
delete_option('woocommerce_blockonomics_settings');
delete_site_option('woocommerce_blockonomics_settings');
delete_option('blockonomics_store_name');
delete_site_option('blockonomics_store_name');
delete_option('blockonomics_enabled_cryptos');
delete_site_option('blockonomics_enabled_cryptos');
delete_option('woocommerce_payment_page_id');
delete_site_option('woocommerce_payment_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'blockonomics_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('blockonomics_temp_wallet_id');
delete_site_option('blockonomics_temp_wallet_id');
delete_option('blockonomics_extra_margin');
delete_site_option('blockonomics_extra_margin');
delete_option('blockonomics_orders');
delete_site_option('blockonomics_orders');

