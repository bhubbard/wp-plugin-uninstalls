-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'quillforms_version', 'quillforms-flush-rewrite-rules', 'quillforms_ai_api_key', 'quillforms_license', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'quillforms_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blocks', 'messages', 'notifications', 'payments', 'products', 'coupons_usage_count', 'theme', 'settings', 'quiz', 'description', 'customCSS');
DELETE FROM wp_usermeta WHERE meta_key IN ('blocks', 'messages', 'notifications', 'payments', 'products', 'coupons_usage_count', 'theme', 'settings', 'quiz', 'description', 'customCSS');
DELETE FROM wp_termmeta WHERE meta_key IN ('blocks', 'messages', 'notifications', 'payments', 'products', 'coupons_usage_count', 'theme', 'settings', 'quiz', 'description', 'customCSS');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blocks', 'messages', 'notifications', 'payments', 'products', 'coupons_usage_count', 'theme', 'settings', 'quiz', 'description', 'customCSS');

