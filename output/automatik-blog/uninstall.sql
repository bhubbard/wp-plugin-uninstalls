-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automatik_blog_unique_code', 'automatik_blog_webstories_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webstory_logo_url', 'webstory_cta_text', 'webstory_cta_link', 'webstory_cta_position', 'webstory_ads', 'webstory_pages', 'webstory_cta_color', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_settings', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('webstory_logo_url', 'webstory_cta_text', 'webstory_cta_link', 'webstory_cta_position', 'webstory_ads', 'webstory_pages', 'webstory_cta_color', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_settings', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('webstory_logo_url', 'webstory_cta_text', 'webstory_cta_link', 'webstory_cta_position', 'webstory_ads', 'webstory_pages', 'webstory_cta_color', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_settings', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webstory_logo_url', 'webstory_cta_text', 'webstory_cta_link', 'webstory_cta_position', 'webstory_ads', 'webstory_pages', 'webstory_cta_color', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_settings', '_wp_attachment_image_alt');

