-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edara_warehouses', 'edara_sales_stores', 'edara_shipping_services', 'edara_classifications', 'edara_ar_accounts', 'edara_admin_notices', 'edara_webhook_context');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'guest', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'guest', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'guest', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'guest', '_regular_price', '_sale_price');

