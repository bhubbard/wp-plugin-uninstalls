-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('red8_ai_color_palette_option', 'red8_ai_color_palette_settings_key_saved_date');

