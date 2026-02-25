-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cointopay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cointopay_crypto_alt_coin');
DELETE FROM wp_usermeta WHERE meta_key IN ('cointopay_crypto_alt_coin');
DELETE FROM wp_termmeta WHERE meta_key IN ('cointopay_crypto_alt_coin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cointopay_crypto_alt_coin');

