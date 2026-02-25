-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('darkmeta_dark_mode_enabled', 'darkmeta_dark_mode_background_color', 'darkmeta_dark_mode_text_color', 'darkmeta_dark_mode_icon_light', 'darkmeta_dark_mode_icon_dark');

