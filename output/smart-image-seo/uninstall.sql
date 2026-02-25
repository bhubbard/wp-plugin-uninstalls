-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aimgseo_options');
DELETE FROM wp_options WHERE option_name LIKE 'aimgseo_bulk_stop_%';
DELETE FROM wp_options WHERE option_name LIKE 'aimgseo_bulk_log_%';
DELETE FROM wp_options WHERE option_name LIKE 'aimgseo_bulk_running_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_copyright', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', 'rank_math_focus_keyword', '_aioseo_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_copyright', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', 'rank_math_focus_keyword', '_aioseo_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_copyright', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', 'rank_math_focus_keyword', '_aioseo_keywords', '_seopress_analysis_target_kw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_copyright', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', 'rank_math_focus_keyword', '_aioseo_keywords', '_seopress_analysis_target_kw');

