-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayr_seo_bridge_version', 'ayr_seo_bridge_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', 'rank_math_focus_keyword', 'rank_math_description', '_seopress_analysis_target_kw', '_seopress_titles_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', 'rank_math_focus_keyword', 'rank_math_description', '_seopress_analysis_target_kw', '_seopress_titles_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', 'rank_math_focus_keyword', 'rank_math_description', '_seopress_analysis_target_kw', '_seopress_titles_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', 'rank_math_focus_keyword', 'rank_math_description', '_seopress_analysis_target_kw', '_seopress_titles_desc');

