-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('admin_color', '_edit_lock', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('admin_color', '_edit_lock', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('admin_color', '_edit_lock', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('admin_color', '_edit_lock', '_edit_last');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_columns_width';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_columns_width';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_columns_width';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_columns_width';

