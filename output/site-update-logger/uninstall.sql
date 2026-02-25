-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sulog_delete_data_on_uninstall', 'sulog_pre_update_wp_version', 'sulog_last_version', 'site_update_logger_pre_update_wp_version', 'sulog_migration_done', 'site_update_logger_migration_done', 'sulog_version', 'sulog_settings');
DELETE FROM wp_options WHERE option_name LIKE 'sulog_pre_update_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'sulog_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'sulog_pre_update_theme_%';
DELETE FROM wp_options WHERE option_name LIKE 'sulog_theme_%';

