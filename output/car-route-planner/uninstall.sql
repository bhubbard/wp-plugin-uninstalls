-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crp_language', 'crp_shortcode_type', 'crp_currency', 'crp_measure', 'crp_disable_font_auto_tuning', 'crp_font_family', 'crp_font_size', 'crp_text_color', 'crp_background_color', 'crp_accent_color', 'crp_default_from', 'crp_hide_from', 'crp_default_to', 'crp_hide_to', 'crp_show_via', 'crp_default_via', 'crp_show_fuel_calc', 'crp_default_fuel_consumption', 'crp_default_fuel_price', 'crp_show_speed_profile', 'crp_default_speed_limit_motorway', 'crp_default_speed_limit_other', 'crp_show_result_length', 'crp_show_result_driving_time', 'crp_show_result_fuel_amount', 'crp_show_result_fuel_cost', 'crp_show_result_customized_cost', 'crp_customized_cost_formula', 'crp_customized_cost_label', 'crp_show_result_map', 'crp_show_result_scheme', 'crp_calculate_instantly', 'crp_only_countries', 'crp_prefer_countries');
DELETE FROM wp_options WHERE option_name LIKE 'crp_%';

