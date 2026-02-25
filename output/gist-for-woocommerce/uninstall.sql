-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gstwc_access_token', 'gstwc_is_api_connected', 'gstwc_store_id', 'woocommerce_currency', 'gstwc_abandon_cart_interval', 'gstwc_customer_tagname', 'gstwc_plugin_version', 'gstwc_store_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_backorders', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_backorders', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_backorders', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', '_backorders', '_stock_status');

