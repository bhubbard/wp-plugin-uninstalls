-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphpc_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wphpc_sku', 'wphpc_regular_price', 'wphpc_sale_price', 'wphpc_weight', 'wphpc_status', 'wphpc_stock_status', 'wphpc_product_type', 'wphpc_product_url', 'wphpc_short_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('wphpc_sku', 'wphpc_regular_price', 'wphpc_sale_price', 'wphpc_weight', 'wphpc_status', 'wphpc_stock_status', 'wphpc_product_type', 'wphpc_product_url', 'wphpc_short_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('wphpc_sku', 'wphpc_regular_price', 'wphpc_sale_price', 'wphpc_weight', 'wphpc_status', 'wphpc_stock_status', 'wphpc_product_type', 'wphpc_product_url', 'wphpc_short_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wphpc_sku', 'wphpc_regular_price', 'wphpc_sale_price', 'wphpc_weight', 'wphpc_status', 'wphpc_stock_status', 'wphpc_product_type', 'wphpc_product_url', 'wphpc_short_description');

