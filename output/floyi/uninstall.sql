-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floyi_site_id', 'floyi_connection_status', 'classic-editor-replace', 'floyi_site_token', 'floyi_webhook_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_floyi_article_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_floyi_article_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_floyi_article_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_floyi_article_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_seopress_titles_title', '_seopress_titles_desc', '_seopress_analysis_target_kw', '_wp_attachment_image_alt');

