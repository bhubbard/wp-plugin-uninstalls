-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swifno_opts', 'swifno_key', 'swifno_secret_key', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

