-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woopei_show_rating', 'woopei_hide_rating', 'woopei_notified', 'woopei_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_sku', '_weight', '_stock', '_manage_stock', '_stock_status', '_virtual', '_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_sku', '_weight', '_stock', '_manage_stock', '_stock_status', '_virtual', '_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_sku', '_weight', '_stock', '_manage_stock', '_stock_status', '_virtual', '_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_sku', '_weight', '_stock', '_manage_stock', '_stock_status', '_virtual', '_visibility');

