-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nbapf_openai_api_key', 'nbapf_openai_model', 'nbapf_use_dalle', 'nbapf_queue_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_yoast_wpseo_canonical', '_yoast_wpseo_is_cornerstone', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', 'rank_math_canonical_url', 'rank_math_primary_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_yoast_wpseo_canonical', '_yoast_wpseo_is_cornerstone', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', 'rank_math_canonical_url', 'rank_math_primary_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_yoast_wpseo_canonical', '_yoast_wpseo_is_cornerstone', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', 'rank_math_canonical_url', 'rank_math_primary_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_yoast_wpseo_canonical', '_yoast_wpseo_is_cornerstone', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', 'rank_math_canonical_url', 'rank_math_primary_focus_keyword');

