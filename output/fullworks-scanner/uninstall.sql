-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FULLWORKS_SCANNER_general', 'FULLWORKS_SCANNER_audit_schedule', 'FULLWORKS_SCANNER_db_version', 'auto_update_plugins', 'fullworks-scanner-whitelabel-names', 'fullworks-vulnerability-plugin-data', 'update_plugins', 'fullworks-scanner-theme-data', 'update_themes', 'fullworks_vulndb_control', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'FULLWORKS_SCANNER_plugin_updated_%';
DELETE FROM wp_options WHERE option_name LIKE ' FULLWORKS_SCANNER_plugin_updated_%';
DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered';

