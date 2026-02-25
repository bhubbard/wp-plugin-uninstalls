-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pressidium_performance_activated', 'pressidium_performance_settings', 'pressidium_performance_table_versions');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

