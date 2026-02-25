-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admintosh_last_theme_change', 'admintosh_last_activated_plugin', 'admintosh_last_registered_user', 'admintosh_options', 'admintosh_activity_logs_db_table', 'admintosh_lh_database_table', 'admintosh_domain_whois_info', 'update_core', 'update_themes', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

