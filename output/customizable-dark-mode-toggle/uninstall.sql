-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmtf_dark_bg_color', 'dmtf_dark_text_color', 'dmtf_toggle_button_bg', 'dmtf_toggle_button_text', 'dmtf_custom_css');

