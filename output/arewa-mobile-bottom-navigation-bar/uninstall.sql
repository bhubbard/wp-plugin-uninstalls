-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arewa_mbn_settings', 'arewa_mbn_buttons', 'arewa_mbn_submenus', 'arewa_mbn_visibility_cache_version', 'arewa_mbn_settings_backup', 'arewa_mbn_buttons_backup', 'arewa_mbn_submenus_backup', 'arewa_mbn_settings_backup_time', 'arewa_mbn_buttons_backup_time', 'arewa_mbn_submenus_backup_time');

