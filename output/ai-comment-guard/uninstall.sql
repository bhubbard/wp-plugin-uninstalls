-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicog_db_version', 'aicog_settings', 'aicog_version', 'aicog_connection_tested', 'aicog_last_error');
DELETE FROM wp_options WHERE option_name LIKE 'aicog_ai_processed_%';

