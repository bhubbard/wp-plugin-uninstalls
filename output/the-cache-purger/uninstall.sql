-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kpcp_settings', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'is_doing_cache_purge');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_kptcp_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_kptcp_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_kptcp_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kptcp_errors_%';

