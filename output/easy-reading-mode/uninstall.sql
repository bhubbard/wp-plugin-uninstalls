-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erm-settings', 'erm_is_first_time', 'erm_custom_design', 'erm_text_color', 'erm_button_text_size', 'erm_background_color', 'erm_border', 'erm_padding', 'erm_margin', 'erm_button_text', 'erm_is_activated');

