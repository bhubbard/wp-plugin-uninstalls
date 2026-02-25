-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('greenmetrics_settings', 'greenmetrics_db_error', 'greenmetrics_aggregated_db_error', 'greenmetrics_version', 'greenmetrics_all_cache_last_update', 'greenmetrics_table_columns');
DELETE FROM wp_options WHERE option_name LIKE 'greenmetrics_table_exists_%';

