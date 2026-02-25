-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swpanel_migrator_run_task', 'swpanel_migrator_token', 'swpanel_migrator_secret_key', 'swpanel_migrator_status', 'swpanel_migrator_maintenance', 'swpanel_migrator_token_url', 'swpanel_migrator_url', 'swpanel_migrator_sql_uuid', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

