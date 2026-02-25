-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inax_options', 'inax_payment_gateway', 'inax_do_activation', 'inax_db_version', 'woocommerce_currency', 'inax_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_current_woo_wallet_balance');
DELETE FROM wp_usermeta WHERE meta_key IN ('_current_woo_wallet_balance');
DELETE FROM wp_termmeta WHERE meta_key IN ('_current_woo_wallet_balance');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_current_woo_wallet_balance');

