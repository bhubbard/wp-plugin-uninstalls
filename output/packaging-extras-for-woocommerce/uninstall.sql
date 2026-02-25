-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_packaging_materials_packaging_stock_reduced', 'woo_packaging_materials_packaging', 'woo_packaging_materials_packaging_used', 'woo_packaging_materials_usage_per_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_packaging_materials_packaging_stock_reduced', 'woo_packaging_materials_packaging', 'woo_packaging_materials_packaging_used', 'woo_packaging_materials_usage_per_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_packaging_materials_packaging_stock_reduced', 'woo_packaging_materials_packaging', 'woo_packaging_materials_packaging_used', 'woo_packaging_materials_usage_per_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_packaging_materials_packaging_stock_reduced', 'woo_packaging_materials_packaging', 'woo_packaging_materials_packaging_used', 'woo_packaging_materials_usage_per_order');

