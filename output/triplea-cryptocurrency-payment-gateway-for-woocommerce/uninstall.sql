-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('triplea_api_endpoint_token', 'wc_triplea_crypto_payment_installed', 'wc_triplea_crypto_payment_version', 'triplea_wc_spare_me', 'triplea_wc_remind_me', 'triplea_wc_rated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_triplea_notify_secret', '_triplea_payment_tier', '_triplea_order_crypto_amount', '_triplea_order_amount', '_triplea_amount_paid', '_triplea_crypto_amount_paid', '_triplea_crypto_currency', '_triplea_order_currency', '_triplea_tx_id', '_triplea_payment_reference', '_triplea_access_token', '_triplea_crypto_address', '_triplea_order_status', '_triplea_payment_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_triplea_notify_secret', '_triplea_payment_tier', '_triplea_order_crypto_amount', '_triplea_order_amount', '_triplea_amount_paid', '_triplea_crypto_amount_paid', '_triplea_crypto_currency', '_triplea_order_currency', '_triplea_tx_id', '_triplea_payment_reference', '_triplea_access_token', '_triplea_crypto_address', '_triplea_order_status', '_triplea_payment_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_triplea_notify_secret', '_triplea_payment_tier', '_triplea_order_crypto_amount', '_triplea_order_amount', '_triplea_amount_paid', '_triplea_crypto_amount_paid', '_triplea_crypto_currency', '_triplea_order_currency', '_triplea_tx_id', '_triplea_payment_reference', '_triplea_access_token', '_triplea_crypto_address', '_triplea_order_status', '_triplea_payment_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_triplea_notify_secret', '_triplea_payment_tier', '_triplea_order_crypto_amount', '_triplea_order_amount', '_triplea_amount_paid', '_triplea_crypto_amount_paid', '_triplea_crypto_currency', '_triplea_order_currency', '_triplea_tx_id', '_triplea_payment_reference', '_triplea_access_token', '_triplea_crypto_address', '_triplea_order_status', '_triplea_payment_status');

