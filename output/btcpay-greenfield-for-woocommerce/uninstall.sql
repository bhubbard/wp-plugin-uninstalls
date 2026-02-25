-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btcpay_gf_separate_gateways', 'btcpay_gf_sats_mode', 'btcpay_gf_review_dismissed_forever', 'btcpay_gf_url', 'btcpay_gf_modal_checkout', 'btcpaygf_permalinks_flushed', 'btcpay_gf_api_key', 'btcpay_gf_store_id', 'btcpay_gf_connection_details', 'btcpay_gf_webhook', 'woocommerce_btcpaygf_default_settings', 'btcpay_gf_refund_note_visible', 'btcpay_gf_debug', 'btcpay_gf_order_states', 'btcpay_gf_protect_order_status', 'btcpay_gf_send_customer_data', 'btcpay_gf_transaction_speed', 'btcpay_gf_review_dismissed');

