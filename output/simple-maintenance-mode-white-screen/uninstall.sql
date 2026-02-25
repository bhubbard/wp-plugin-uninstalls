-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smmws_enabled', 'smmws_text', 'smmws_font_size', 'smmws_bg_color', 'smmws_text_color', 'smmws_font_family', 'smmws_logo', 'smmws_settings_saved');

