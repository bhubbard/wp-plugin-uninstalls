-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_clever_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ct_token', '_customer_user', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ct_token', '_customer_user', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ct_token', '_customer_user', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ct_token', '_customer_user', 'thumbnail_id');

