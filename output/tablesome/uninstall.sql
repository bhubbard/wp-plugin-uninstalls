-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tablesome_api_credentials', 'tablesome_mailchimp_api_key', 'tablesome_mailchimp_api_status', 'tablesome_mailchimp_api_status_message', 'tablesome_notion_api_key', 'tablesome_notion_api_status', 'tablesome_notion_api_status_message', 'workflow_redirection_data', 'tablesome_can_track_events', 'tablesome_oauth_errors', 'tablesome_oauth_error_counts', 'tablesome_image_link_migration_v0592', 'tablesome_opt_in_notices', 'tablesome_version', 'tablesome_upgrades', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'tablesome_workflow_nonce', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE '%_registered_datetime';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tablesome_data', 'tablesome_table_triggers', 'last_update_time', 'last_update_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('tablesome_data', 'tablesome_table_triggers', 'last_update_time', 'last_update_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('tablesome_data', 'tablesome_table_triggers', 'last_update_time', 'last_update_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tablesome_data', 'tablesome_table_triggers', 'last_update_time', 'last_update_method');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

