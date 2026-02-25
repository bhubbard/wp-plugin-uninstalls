-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartypress_ai_settings', 'smartypress_ai_activated_at', 'smartypress_ai_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smartypress_ai_review_dismissed_at', 'smartypress_ai_review_dismiss_count', '_wp_attachment_image_alt', 'smartypress_ai_prompt', 'smartypress_ai_model', 'smartypress_ai_resolution', 'smartypress_ai_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('smartypress_ai_review_dismissed_at', 'smartypress_ai_review_dismiss_count', '_wp_attachment_image_alt', 'smartypress_ai_prompt', 'smartypress_ai_model', 'smartypress_ai_resolution', 'smartypress_ai_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('smartypress_ai_review_dismissed_at', 'smartypress_ai_review_dismiss_count', '_wp_attachment_image_alt', 'smartypress_ai_prompt', 'smartypress_ai_model', 'smartypress_ai_resolution', 'smartypress_ai_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smartypress_ai_review_dismissed_at', 'smartypress_ai_review_dismiss_count', '_wp_attachment_image_alt', 'smartypress_ai_prompt', 'smartypress_ai_model', 'smartypress_ai_resolution', 'smartypress_ai_generated');

