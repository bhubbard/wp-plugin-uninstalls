-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('outblog_api_key', 'outblog_post_as_draft', 'outblog_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keyphrases', '_seopress_analysis_target_kw', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keyphrases', '_seopress_analysis_target_kw', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keyphrases', '_seopress_analysis_target_kw', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keyphrases', '_seopress_analysis_target_kw', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title');

