-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bastgs_settings', 'my_admin_theme_2_settings', 'bastgs_settings[bastgs_select_field_10]');

