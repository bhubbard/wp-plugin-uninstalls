-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expirationdateDebug', 'classic-editor-replace', 'postexpiratorVersion', 'expirationdateDefaultDate', 'expirationdateExpiredPageStatus', 'expirationdateExpiredPostStatus', 'expirationdateDefaultsPage', 'expirationdateDefaultsPost', 'expirationdateCronSchedule', 'expirationdateAutoEnabled', 'pp_future_V30001RestorePostMeta', 'pp_future_V30104ArgsColumnLength', 'expirationdatePreserveData', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'pp_future_version_notices_version_error');
DELETE FROM wp_options WHERE option_name LIKE 'post-expirator-notice-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('expiration_log', 'publishpressfuture_actions_log_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('expiration_log', 'publishpressfuture_actions_log_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('expiration_log', 'publishpressfuture_actions_log_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('expiration_log', 'publishpressfuture_actions_log_format');

