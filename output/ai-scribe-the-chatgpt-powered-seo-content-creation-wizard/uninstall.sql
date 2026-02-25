-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ab_gpt_ai_engine_settings', 'ab_gpt_content_settings', 'ab_prompts_content', 'ai_scribe_delete_data_on_uninstall', 'ai_scribe_languages', 'ab_enable_image_generation', 'ab_image_size', 'ab_image_quality', 'ab_image_format', 'ab_image_background', 'ab_image_style', 'ai_scribe_model_pricing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_caption');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_caption');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_caption');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_aioseop_title', '_aioseop_description', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_caption');

