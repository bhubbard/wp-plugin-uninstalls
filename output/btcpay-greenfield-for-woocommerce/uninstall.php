<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btcpay_gf_separate_gateways');
delete_site_option('btcpay_gf_separate_gateways');
delete_option('btcpay_gf_sats_mode');
delete_site_option('btcpay_gf_sats_mode');
delete_option('btcpay_gf_review_dismissed_forever');
delete_site_option('btcpay_gf_review_dismissed_forever');
delete_option('btcpay_gf_url');
delete_site_option('btcpay_gf_url');
delete_option('btcpay_gf_modal_checkout');
delete_site_option('btcpay_gf_modal_checkout');
delete_option('btcpaygf_permalinks_flushed');
delete_site_option('btcpaygf_permalinks_flushed');
delete_option('btcpay_gf_api_key');
delete_site_option('btcpay_gf_api_key');
delete_option('btcpay_gf_store_id');
delete_site_option('btcpay_gf_store_id');
delete_option('btcpay_gf_connection_details');
delete_site_option('btcpay_gf_connection_details');
delete_option('btcpay_gf_webhook');
delete_site_option('btcpay_gf_webhook');
delete_option('woocommerce_btcpaygf_default_settings');
delete_site_option('woocommerce_btcpaygf_default_settings');
delete_option('btcpay_gf_refund_note_visible');
delete_site_option('btcpay_gf_refund_note_visible');
delete_option('btcpay_gf_debug');
delete_site_option('btcpay_gf_debug');
delete_option('btcpay_gf_order_states');
delete_site_option('btcpay_gf_order_states');
delete_option('btcpay_gf_protect_order_status');
delete_site_option('btcpay_gf_protect_order_status');
delete_option('btcpay_gf_send_customer_data');
delete_site_option('btcpay_gf_send_customer_data');
delete_option('btcpay_gf_transaction_speed');
delete_site_option('btcpay_gf_transaction_speed');

// Delete Transients
delete_transient('btcpay_gf_review_dismissed');
delete_site_transient('btcpay_gf_review_dismissed');

