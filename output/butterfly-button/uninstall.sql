-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('butterfly_button_api_key', 'butterfly_button_auto_inject', 'butterfly_button_display_mode', 'butterfly_button_size', 'butterfly_button_align', 'butterfly_button_horizontal_space', 'butterfly_button_vertical_space', 'butterfly_button_horizontal_unit', 'butterfly_button_vertical_unit');

