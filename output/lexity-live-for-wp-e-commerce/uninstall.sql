-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('currency_type', 'imperative_activation_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsc_product_metadata', '_wpsc_price', '_wpsc_special_price', '_wpsc_sku', '_wpsc_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsc_product_metadata', '_wpsc_price', '_wpsc_special_price', '_wpsc_sku', '_wpsc_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsc_product_metadata', '_wpsc_price', '_wpsc_special_price', '_wpsc_sku', '_wpsc_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsc_product_metadata', '_wpsc_price', '_wpsc_special_price', '_wpsc_sku', '_wpsc_stock');

