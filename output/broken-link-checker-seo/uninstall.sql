-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_localized';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioseo_blc_not_connected', '_aioseo_blc_plugin_review_dismissed', '_aioseo_blc_notification_plugin_review_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioseo_blc_not_connected', '_aioseo_blc_plugin_review_dismissed', '_aioseo_blc_notification_plugin_review_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioseo_blc_not_connected', '_aioseo_blc_plugin_review_dismissed', '_aioseo_blc_notification_plugin_review_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioseo_blc_not_connected', '_aioseo_blc_plugin_review_dismissed', '_aioseo_blc_notification_plugin_review_dismissed');

