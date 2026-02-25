-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%responsive_breakpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_locations';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_icons';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%submenu_display_mode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%submenu_display_mode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%submenu_display_mode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%submenu_display_mode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%grid_system';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%grid_system';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%grid_system';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%grid_system';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%item_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%item_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%item_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%item_settings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%active_tab';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%active_tab';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%active_tab';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%active_tab';

