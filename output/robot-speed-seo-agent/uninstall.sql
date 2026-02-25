-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('robotspeed_api_token', 'robotspeed_stats', 'robotspeed_connected', 'robotspeed_connected_email', 'robotspeed_connected_site', 'robotspeed_connection_token', 'robotspeed_analytics_umami_url', 'robotspeed_analytics_website_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_wp_attachment_image_alt');

