-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_robokassa_last_settings_update_version', 'wc_robokassa_log_file_name');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

