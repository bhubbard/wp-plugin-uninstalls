-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ait_aipseo_license', 'ait_aipseo_recent', 'ait_aipseo_post_scores', 'ait-aipseo-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ait_aipseo_ai_fixit_tips', '_wp_attachment_image_alt', '_ait_aipseo_score', '_ait_aipseo_ai_semantic_keywords', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', '_aioseo_title', '_aioseo_description', 'ait_aipseo_manual_meta_title', 'ait_aipseo_manual_meta_description', 'ait_aipseo_target_keywords', 'ait_aipseo_meta_title', 'ait_aipseo_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ait_aipseo_ai_fixit_tips', '_wp_attachment_image_alt', '_ait_aipseo_score', '_ait_aipseo_ai_semantic_keywords', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', '_aioseo_title', '_aioseo_description', 'ait_aipseo_manual_meta_title', 'ait_aipseo_manual_meta_description', 'ait_aipseo_target_keywords', 'ait_aipseo_meta_title', 'ait_aipseo_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ait_aipseo_ai_fixit_tips', '_wp_attachment_image_alt', '_ait_aipseo_score', '_ait_aipseo_ai_semantic_keywords', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', '_aioseo_title', '_aioseo_description', 'ait_aipseo_manual_meta_title', 'ait_aipseo_manual_meta_description', 'ait_aipseo_target_keywords', 'ait_aipseo_meta_title', 'ait_aipseo_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ait_aipseo_ai_fixit_tips', '_wp_attachment_image_alt', '_ait_aipseo_score', '_ait_aipseo_ai_semantic_keywords', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', '_aioseo_title', '_aioseo_description', 'ait_aipseo_manual_meta_title', 'ait_aipseo_manual_meta_description', 'ait_aipseo_target_keywords', 'ait_aipseo_meta_title', 'ait_aipseo_meta_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ait_aipseo_dismiss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ait_aipseo_dismiss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ait_aipseo_dismiss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ait_aipseo_dismiss_%';

