<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('depay_wc_db_version');
delete_site_option('depay_wc_db_version');
delete_option('depay_wc_gateway_type');
delete_site_option('depay_wc_gateway_type');
delete_option('depay_wc_blockchains');
delete_site_option('depay_wc_blockchains');
delete_option('depay_wc_accepted_payments');
delete_site_option('depay_wc_accepted_payments');
delete_option('depay_wc_tokens');
delete_site_option('depay_wc_tokens');
delete_option('depay_wc_checkout_description_arbitrum');
delete_site_option('depay_wc_checkout_description_arbitrum');
delete_option('depay_wc_checkout_description_avalanche');
delete_site_option('depay_wc_checkout_description_avalanche');
delete_option('depay_wc_checkout_description_base');
delete_site_option('depay_wc_checkout_description_base');
delete_option('depay_wc_checkout_description_bsc');
delete_site_option('depay_wc_checkout_description_bsc');
delete_option('depay_wc_checkout_description_ethereum');
delete_site_option('depay_wc_checkout_description_ethereum');
delete_option('depay_wc_checkout_description_fantom');
delete_site_option('depay_wc_checkout_description_fantom');
delete_option('depay_wc_checkout_description_gnosis');
delete_site_option('depay_wc_checkout_description_gnosis');
delete_option('depay_wc_checkout_description_optimism');
delete_site_option('depay_wc_checkout_description_optimism');
delete_option('depay_wc_checkout_description_polygon');
delete_site_option('depay_wc_checkout_description_polygon');
delete_option('depay_wc_checkout_description_solana');
delete_site_option('depay_wc_checkout_description_solana');
delete_option('depay_wc_checkout_description_worldchain');
delete_site_option('depay_wc_checkout_description_worldchain');
delete_option('depay_wc_checkout_title');
delete_site_option('depay_wc_checkout_title');
delete_option('depay_wc_checkout_description');
delete_site_option('depay_wc_checkout_description');
delete_option('depay_wc_api_key');
delete_site_option('depay_wc_api_key');
delete_option('depay_wc_token_for_denomination');
delete_site_option('depay_wc_token_for_denomination');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('depay_wc_receiving_wallet_address');
delete_site_option('depay_wc_receiving_wallet_address');
delete_option('depay_wc_displayed_currency');
delete_site_option('depay_wc_displayed_currency');

