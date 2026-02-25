-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fnmm_settings', 'fnmm_custom_css', 'fnmm_menu_font_color', 'fnmm_options');

