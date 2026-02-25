-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bccs_activated', 'bccs_version', 'bccs_retention_days', 'bccs_enable_logging', 'bccs_enable_charts', 'bccs_frontend_integration', 'bccs_login_integration', 'bccs_cf7_status', 'bccs_db_version', 'bccs_activated_time', 'bccs_admin_notice', 'bccs_stats_cache', 'bccs_show_ready_notice', 'bccs_stats_all', 'bccs_stats');
DELETE FROM wp_options WHERE option_name LIKE 'bccs_stats_%';

