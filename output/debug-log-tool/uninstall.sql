-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdt_settings', 'wpdt_group_logs_status', 'wpdt_auto_refresh_status', 'cron', 'debug_log_tool_current_version', 'wpdt_cron_status_ok', 'wpdt_installing');

