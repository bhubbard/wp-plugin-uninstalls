-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_start_date', '_menu_expiry_date', '_menu_start_time', '_menu_expiry_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_start_date', '_menu_expiry_date', '_menu_start_time', '_menu_expiry_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_start_date', '_menu_expiry_date', '_menu_start_time', '_menu_expiry_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_start_date', '_menu_expiry_date', '_menu_start_time', '_menu_expiry_time');

