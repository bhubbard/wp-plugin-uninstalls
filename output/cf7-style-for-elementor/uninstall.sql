-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goat_elementor_cf7_addon_button_text_color', 'goat_elementor_cf7_addon_button_background_color');

