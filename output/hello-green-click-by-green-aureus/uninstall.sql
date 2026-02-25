-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('co2_section_api_key', 'co2_section_bg_color', 'co2_section_percentage_key', 'co2_section_option_title_color', 'co2_section_option_text_color', 'co2_section_border_radius_round', 'co2_section_border_radius', 'co2_section_active_bg_color', 'co2_section_inactive_bg_color', 'co2_section_option_active_text_color', 'co2_section_option_inactive_text_color', 'co2_section_border_width', 'co2_section_border_color', 'co2_section_loader', 'co2_section_function2_key', 'co2_section_function1_key', 'default_settings_key', 'co2_weight', 'co2_section_weight_bg_color', 'co2_weight_font', 'co2_section_language', 'co2_section1_weight_font_size', 'co2_section_weight_font_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('totalweight', 'totalcustomerweight', 'green_shop', 'roundOff');
DELETE FROM wp_usermeta WHERE meta_key IN ('totalweight', 'totalcustomerweight', 'green_shop', 'roundOff');
DELETE FROM wp_termmeta WHERE meta_key IN ('totalweight', 'totalcustomerweight', 'green_shop', 'roundOff');
DELETE FROM wp_commentmeta WHERE meta_key IN ('totalweight', 'totalcustomerweight', 'green_shop', 'roundOff');

