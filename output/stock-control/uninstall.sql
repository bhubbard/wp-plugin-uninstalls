-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oacs_sc_stock_control_next_data_purge', 'oacs_sc_stock_control_last_data_purge', 'oacs_sc_stock_control_purge_data_after_days');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_stock_status', '_backorders', '_manage_stock', '_low_stock_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_stock_status', '_backorders', '_manage_stock', '_low_stock_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_stock_status', '_backorders', '_manage_stock', '_low_stock_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_stock_status', '_backorders', '_manage_stock', '_low_stock_amount');

