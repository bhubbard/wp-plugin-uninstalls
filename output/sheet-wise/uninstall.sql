-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swise_service_account_credential', 'swise_settings_integrations', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'swise_settings_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

