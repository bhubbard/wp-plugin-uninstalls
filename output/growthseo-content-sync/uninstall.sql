-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gseo_api_key', 'growthseo_api_key', 'growthseo_category', 'growthseo_author', 'growthseo_tags', 'growthseo_feature_image_enabled', 'growthseo_post_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_growthseo_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseop_title', '_aioseop_description', '_aioseop_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_growthseo_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseop_title', '_aioseop_description', '_aioseop_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_growthseo_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseop_title', '_aioseop_description', '_aioseop_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_growthseo_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseop_title', '_aioseop_description', '_aioseop_keywords');

