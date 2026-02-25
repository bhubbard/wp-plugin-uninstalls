-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_sql_logs_options', 'sm_sql_logs_settings', 'sql_logs_db_version', 'SM_SQL_LOGS_VERSION');

