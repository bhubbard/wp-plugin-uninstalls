-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_lunch_menu_settings', 'tm_lunch_menu_save_data', 'tm_lunch_menu_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tm_lunch_timestamp', '_tm_lunch_menu_day');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tm_lunch_timestamp', '_tm_lunch_menu_day');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tm_lunch_timestamp', '_tm_lunch_menu_day');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tm_lunch_timestamp', '_tm_lunch_menu_day');

