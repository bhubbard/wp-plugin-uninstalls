-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woobe_version', 'woobe_alert', 'woobe_shop_manager_visibility', 'woobe_manage_rate_alert');
DELETE FROM wp_options WHERE option_name LIKE 'woobe_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_sku', '_price', '_regular_price', '_sale_price', '_stock_status', '_manage_stock', '_stock', 'woobe_fprofile_saved', 'woobe_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_sku', '_price', '_regular_price', '_sale_price', '_stock_status', '_manage_stock', '_stock', 'woobe_fprofile_saved', 'woobe_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_sku', '_price', '_regular_price', '_sale_price', '_stock_status', '_manage_stock', '_stock', 'woobe_fprofile_saved', 'woobe_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_sku', '_price', '_regular_price', '_sale_price', '_stock_status', '_manage_stock', '_stock', 'woobe_fprofile_saved', 'woobe_notice_dismissed');

