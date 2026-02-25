<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metapress_restrict_site_access');
delete_site_option('metapress_restrict_site_access');
delete_option('metapress_site_access_required_products');
delete_site_option('metapress_site_access_required_products');
delete_option('metapress_redirect_type');
delete_site_option('metapress_redirect_type');
delete_option('metapress_redirect_page_id');
delete_site_option('metapress_redirect_page_id');
delete_option('metapress_redirect_custom_url');
delete_site_option('metapress_redirect_custom_url');
delete_option('metapress_access_tokens_expire');
delete_site_option('metapress_access_tokens_expire');
delete_option('metapress_moralis_api_key');
delete_site_option('metapress_moralis_api_key');
delete_option('metapress_opensea_api_key');
delete_site_option('metapress_opensea_api_key');
delete_option('metapress_supported_networks');
delete_site_option('metapress_supported_networks');
delete_option('metapress_supported_test_networks');
delete_site_option('metapress_supported_test_networks');
delete_option('metapress_ethereum_wallet_address');
delete_site_option('metapress_ethereum_wallet_address');
delete_option('metapress_solana_wallet_address');
delete_site_option('metapress_solana_wallet_address');
delete_option('metapress_live_mode');
delete_site_option('metapress_live_mode');
delete_option('metapress_supported_token_types');
delete_site_option('metapress_supported_token_types');
delete_option('metapress_nft_contract_list');
delete_site_option('metapress_nft_contract_list');
delete_option('metapress_custom_tokens_list');
delete_site_option('metapress_custom_tokens_list');
delete_option('metapress_binance_cron');
delete_site_option('metapress_binance_cron');
delete_option('metapress_token_ratios_updated_timestamp');
delete_site_option('metapress_token_ratios_updated_timestamp');
delete_option('metapress_token_ratios');
delete_site_option('metapress_token_ratios');
delete_option('metapress_supported_post_types');
delete_site_option('metapress_supported_post_types');
delete_option('metapress_woocommerce_filters_enabled');
delete_site_option('metapress_woocommerce_filters_enabled');
delete_option('metapress_checkout_page');
delete_site_option('metapress_checkout_page');
delete_option('metapress_transactions_page');
delete_site_option('metapress_transactions_page');
delete_option('metapress_subscriptions_page');
delete_site_option('metapress_subscriptions_page');
delete_option('metapress_style_settings');
delete_site_option('metapress_style_settings');
delete_option('metapress_allowed_test_address');
delete_site_option('metapress_allowed_test_address');
delete_option('metapress_solana_wallet_test_address');
delete_site_option('metapress_solana_wallet_test_address');
delete_option('metapress_solana_rpc_url');
delete_site_option('metapress_solana_rpc_url');
delete_option('metapress_text_settings');
delete_site_option('metapress_text_settings');
delete_option('metapress_contract_addresses');
delete_site_option('metapress_contract_addresses');
delete_option('metapress_api_request_match');
delete_site_option('metapress_api_request_match');
delete_option('wp_metapress_plugin_version');
delete_site_option('wp_metapress_plugin_version');
delete_option('metapress_wallet_addresses');
delete_site_option('metapress_wallet_addresses');
delete_option('metapress_test_wallet_addresses');
delete_site_option('metapress_test_wallet_addresses');
delete_option('metapress_pages_created');
delete_site_option('metapress_pages_created');
delete_option('metapress_update_request_key');
delete_site_option('metapress_update_request_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('metapress_send_subscription_renewal_reminders_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_is_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_is_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_is_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_is_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'subscription_interval_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'subscription_interval_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'subscription_interval_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'subscription_interval_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'subscription_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'subscription_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'subscription_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'subscription_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_nft_access_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_nft_access_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_nft_access_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_nft_access_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_price_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_price_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_price_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_price_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'metapress_required_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'metapress_required_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'metapress_required_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'metapress_required_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'metapress_allow_page_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'metapress_allow_page_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'metapress_allow_page_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'metapress_allow_page_access' ) );

