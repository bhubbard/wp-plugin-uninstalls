-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('depay_wc_db_version', 'depay_wc_gateway_type', 'depay_wc_blockchains', 'depay_wc_accepted_payments', 'depay_wc_tokens', 'depay_wc_checkout_description_arbitrum', 'depay_wc_checkout_description_avalanche', 'depay_wc_checkout_description_base', 'depay_wc_checkout_description_bsc', 'depay_wc_checkout_description_ethereum', 'depay_wc_checkout_description_fantom', 'depay_wc_checkout_description_gnosis', 'depay_wc_checkout_description_optimism', 'depay_wc_checkout_description_polygon', 'depay_wc_checkout_description_solana', 'depay_wc_checkout_description_worldchain', 'depay_wc_checkout_title', 'depay_wc_checkout_description', 'depay_wc_api_key', 'depay_wc_token_for_denomination', 'woocommerce_price_num_decimals', 'woocommerce_default_country', 'woocommerce_currency', 'depay_wc_receiving_wallet_address', 'depay_wc_displayed_currency');

