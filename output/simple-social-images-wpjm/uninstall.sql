-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssi_wpjm_license_key', 'ssi_wpjm_template', 'ssi_wpjm_text_color', 'ssi_wpjm_text_bg_color', 'ssi_wpjm_bg_color', 'ssi_wpjm_logo', 'ssi_wpjm_logo_size', 'ssi_wpjm_background_images', 'ssi_wpjm_title_size', 'ssi_wpjm_location_size', 'ssi_wpjm_salary_size', 'ssi_wpjm_title_placeholder_text', 'ssi_wpjm_location_placeholder_text', 'ssi_wpjm_salary_placeholder_text', 'ssi_wpjm_google_font_url', 'ssi_wpjm_google_font_family');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssi_wpjm_image', 'ssi_wpjm_image_id', 'rank_math_facebook_image', 'rank_math_twitter_image', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssi_wpjm_image', 'ssi_wpjm_image_id', 'rank_math_facebook_image', 'rank_math_twitter_image', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssi_wpjm_image', 'ssi_wpjm_image_id', 'rank_math_facebook_image', 'rank_math_twitter_image', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssi_wpjm_image', 'ssi_wpjm_image_id', 'rank_math_facebook_image', 'rank_math_twitter_image', '_yoast_wpseo_opengraph-image', '_yoast_wpseo_twitter-image');

