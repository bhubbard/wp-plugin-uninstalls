-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockonomics_api_key', 'blockonomics_bitcoin_discount', 'blockonomics_callback_secret', 'blockonomics_db_version', 'blockonomics_margin', 'blockonomics_timeperiod', 'blockonomics_api_updated', 'blockonomics_bch', 'blockonomics_btc', 'blockonomics_underpayment_slack', 'blockonomics_usdt_testnet', 'blockonomics_lite', 'blockonomics_nojs', 'blockonomics_network_confirmation', 'blockonomics_partial_payments', 'woocommerce_blockonomics_settings', 'blockonomics_store_name', 'blockonomics_enabled_cryptos', 'woocommerce_payment_page_id', 'blockonomics_temp_wallet_id', 'blockonomics_extra_margin', 'blockonomics_orders');
DELETE FROM wp_options WHERE option_name LIKE 'blockonomics_%';

