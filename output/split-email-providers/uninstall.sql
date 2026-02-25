-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('split_email_add_price', 'split_email_send_shop_address', 'woocommerce_email_from_address', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_global_unique_id');

