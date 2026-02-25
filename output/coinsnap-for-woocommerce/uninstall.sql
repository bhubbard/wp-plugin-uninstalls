-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coinsnap_provider', 'woocommerce_currency', 'coinsnap_connection_status_display', 'coinsnap_sats_mode', 'btcpay_server_url', 'coinsnap_permalinks_flushed', 'btcpay_api_key', 'btcpay_store_id', 'woocommerce_coinsnap_settings', 'coinsnap_modal_checkout', 'coinsnap_order_states', 'coinsnap_send_customer_data', 'coinsnap_returnurl', 'coinsnap_autoredirect', 'coinsnap_separate_gateways', 'coinsnap_api_key', 'coinsnap_store_id', 'coinsnap_webhook', 'coinsnap_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Coinsnap_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('Coinsnap_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('Coinsnap_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Coinsnap_id');

