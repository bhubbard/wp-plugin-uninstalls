-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noai_has_settings', 'noai_site_name', 'noai_site_topic', 'noai_api_key', 'noai_site_color', 'noai_bg_color', 'noai_site_category', 'noai_site_slug', 'noai_last_settings_push', 'noai_last_article_imported', 'noai_articles_remaining', 'noai_ai_next_generate_at', 'noai_ai_import_at', 'noai_ai_download_at', 'noai_chart_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'noai_article_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_slug', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_secondary_keywords', '_yoast_wpseo_keywordsynonyms', 'noai_article_folder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'noai_article_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_slug', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_secondary_keywords', '_yoast_wpseo_keywordsynonyms', 'noai_article_folder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'noai_article_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_slug', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_secondary_keywords', '_yoast_wpseo_keywordsynonyms', 'noai_article_folder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'noai_article_jsonld', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_slug', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_secondary_keywords', '_yoast_wpseo_keywordsynonyms', 'noai_article_folder');

