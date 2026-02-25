-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jimmy_branding_option_content', 'jimmy_branding_option_width', 'jimmy_branding_option_width_percents', 'jimmy_branding_option_height_min', 'jimmy_branding_option_height_min_percents', 'jimmy_branding_option_height_max', 'jimmy_branding_option_height_max_percents', 'jimmy_branding_option_res_choice', 'jimmy_branding_option_color_opener', 'jimmy_branding_option_width_opener', 'jimmy_branding_option_opener_choice', 'jimmy_branding_option_webgl_choice', 'jimmy_branding_option_shortcode_choice');

