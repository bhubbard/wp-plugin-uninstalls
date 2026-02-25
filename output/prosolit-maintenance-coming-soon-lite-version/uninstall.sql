-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prmcslv_option_description', 'prmcslv_option_social_facebook', 'prmcslv_option_social_x', 'prmcslv_option_social_linkedin', 'prmcslv_option_social_instagram', 'prmcslv_option_social_youtube', 'prmcslv_option_social_tiktok', 'prmcslv_option_social_color', 'prmcslv_option_mode', 'prmcslv_option_title', 'prmcslv_option_headline', 'prmcslv_option_background_color', 'prmcslv_option_background_image', 'prmcslv_option_headline_color', 'prmcslv_option_description_color', 'prmcslv_option_font_policy');

