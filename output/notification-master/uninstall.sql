-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification_master_version', 'notification_master_instagram_tokens', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('connections', 'ntfm_review_notice_dismissed', 'ntfm_review_notice_permanent_dismissed', 'ntfm_review_notice_first_seen', '_edit_last', 'trigger');
DELETE FROM wp_usermeta WHERE meta_key IN ('connections', 'ntfm_review_notice_dismissed', 'ntfm_review_notice_permanent_dismissed', 'ntfm_review_notice_first_seen', '_edit_last', 'trigger');
DELETE FROM wp_termmeta WHERE meta_key IN ('connections', 'ntfm_review_notice_dismissed', 'ntfm_review_notice_permanent_dismissed', 'ntfm_review_notice_first_seen', '_edit_last', 'trigger');
DELETE FROM wp_commentmeta WHERE meta_key IN ('connections', 'ntfm_review_notice_dismissed', 'ntfm_review_notice_permanent_dismissed', 'ntfm_review_notice_first_seen', '_edit_last', 'trigger');

