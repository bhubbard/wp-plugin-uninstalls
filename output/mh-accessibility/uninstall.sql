-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mhacc_install_time', 'mhacc_settings', 'mhacc_widget_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mhacc_widget_theme_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('mhacc_widget_theme_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('mhacc_widget_theme_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mhacc_widget_theme_mode');

