-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bitcoin_sv_settings', 'bwwc_gateway_id_migration_done', 'woocommerce_bitcoin_settings', 'bwwc_migration_offset');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'bwwc_coingecko_rate_%';
DELETE FROM wp_options WHERE option_name LIKE 'bwwc_coinpaprika_rate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order_total_in_btc', 'bitcoins_address', 'expected_sats', 'address_expires_at', 'txids', 'received_sats', 'confirmed_sats', 'best_confirmations', 'last_blockchain_check', 'last_checked_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('order_total_in_btc', 'bitcoins_address', 'expected_sats', 'address_expires_at', 'txids', 'received_sats', 'confirmed_sats', 'best_confirmations', 'last_blockchain_check', 'last_checked_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('order_total_in_btc', 'bitcoins_address', 'expected_sats', 'address_expires_at', 'txids', 'received_sats', 'confirmed_sats', 'best_confirmations', 'last_blockchain_check', 'last_checked_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order_total_in_btc', 'bitcoins_address', 'expected_sats', 'address_expires_at', 'txids', 'received_sats', 'confirmed_sats', 'best_confirmations', 'last_blockchain_check', 'last_checked_at');

