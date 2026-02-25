-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crypto_bitcoin_address', 'crypto_ethereum_address', 'crypto_solana_address', 'crypto_bitcoin_qr_url', 'crypto_ethereum_qr_url', 'crypto_solana_qr_url', 'default_crypto', 'default_theme', 'crypto_title');

