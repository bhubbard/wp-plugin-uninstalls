-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_crypto_checkout_settings', 'woocommerce_currency', 'transactions', 'gpcrypto_deferred_admin_notices', 'gpcrypto_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

