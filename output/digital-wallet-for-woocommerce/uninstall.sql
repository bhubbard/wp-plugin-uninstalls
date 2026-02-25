-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwwsunarc_active_first', 'dwwsunarc_settings_sunarc', 'dwwsunarc_wallet_id', 'woocommerce_dwwsunarc_wallet_payment_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dwwsunarc_wallet_balance', '_price', '_regular_price', '_virtual', '_sold_individually');
DELETE FROM wp_usermeta WHERE meta_key IN ('dwwsunarc_wallet_balance', '_price', '_regular_price', '_virtual', '_sold_individually');
DELETE FROM wp_termmeta WHERE meta_key IN ('dwwsunarc_wallet_balance', '_price', '_regular_price', '_virtual', '_sold_individually');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dwwsunarc_wallet_balance', '_price', '_regular_price', '_virtual', '_sold_individually');

