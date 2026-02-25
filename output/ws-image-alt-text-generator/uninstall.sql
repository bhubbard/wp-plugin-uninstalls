-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsimgaltgen_use_seo_keywords', 'wsimgaltgen_auto_generate_on_upload', 'wsimgaltgen_api_key', 'wsimgaltgen_language', 'wsimgaltgen_generate_title', 'wsimgaltgen_generate_alt', 'wsimgaltgen_generate_description', 'wsimgaltgen_generate_caption', 'wsimgaltgen_api_error', 'wsimgaltgen_recent_uploads', 'wsimgaltgen_api_validation', 'wsimgaltgen_credits');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_schema_article_type', '_yoast_wpseo_structured_data_blocks', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_keywordresults', '_yoast_wpseo_focuskeywords', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_saved_data', '_aioseo_keyphrases', '_aioseop_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_schema_article_type', '_yoast_wpseo_structured_data_blocks', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_keywordresults', '_yoast_wpseo_focuskeywords', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_saved_data', '_aioseo_keyphrases', '_aioseop_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_schema_article_type', '_yoast_wpseo_structured_data_blocks', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_keywordresults', '_yoast_wpseo_focuskeywords', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_saved_data', '_aioseo_keyphrases', '_aioseop_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_schema_article_type', '_yoast_wpseo_structured_data_blocks', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_keywordresults', '_yoast_wpseo_focuskeywords', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_saved_data', '_aioseo_keyphrases', '_aioseop_keywords', '_seopress_analysis_target_kw');

