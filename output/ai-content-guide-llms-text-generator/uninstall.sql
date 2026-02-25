-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fulgid_aicogu_settings', 'fulgid_aicogu_file_updated', 'fulgid_aicogu_activated', 'ai_content_guide_settings', 'ai_content_guide_file_content', 'fulgid_aicogu_file_content', 'ai_content_guide_full_file_content', 'fulgid_aicogu_full_file_content', 'ai_content_guide_file_updated', 'ai_content_guide_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_url';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');

