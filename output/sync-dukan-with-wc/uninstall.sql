-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dukan_access_code', 'dukan_connection', 'dukan_cron', 'dukan_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibility', '_stock', '_regular_price', '_price', '_stock_status', '_sku', '_dukan_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibility', '_stock', '_regular_price', '_price', '_stock_status', '_sku', '_dukan_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibility', '_stock', '_regular_price', '_price', '_stock_status', '_sku', '_dukan_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibility', '_stock', '_regular_price', '_price', '_stock_status', '_sku', '_dukan_order_id');

