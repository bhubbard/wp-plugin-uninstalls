-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deploy_sync_content__tracking_init_once', 'deploy_sync_content__settings_data', 'deploy_sync_content__url_prod_is_defined', 'deploy_sync_content__debug', 'deploy_sync_content__activation_message', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';

