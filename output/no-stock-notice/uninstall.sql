-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_stock_label_name', 'no_stock_label_color', 'no_stock_label_bg_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status');

