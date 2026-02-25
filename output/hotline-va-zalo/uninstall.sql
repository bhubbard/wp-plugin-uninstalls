-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zalo_number_settings_input_field', 'zalo_text_settings_input_field', 'hotline_number_settings_input_field', 'hotline_text_settings_input_field');

