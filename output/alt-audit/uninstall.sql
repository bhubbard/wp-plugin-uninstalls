-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('altaudit82ai_quality_scores_migrated', 'altaudit82ai_last_scan_time', 'altaudit82ai_scan_reminder_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_altaudit82ai_auto_generated', '_altaudit82ai_decorative', '_altaudit82ai_quality_score', '_altaudit82ai_generation_method', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_altaudit82ai_auto_generated', '_altaudit82ai_decorative', '_altaudit82ai_quality_score', '_altaudit82ai_generation_method', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_altaudit82ai_auto_generated', '_altaudit82ai_decorative', '_altaudit82ai_quality_score', '_altaudit82ai_generation_method', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_altaudit82ai_auto_generated', '_altaudit82ai_decorative', '_altaudit82ai_quality_score', '_altaudit82ai_generation_method', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_product_image_gallery');

