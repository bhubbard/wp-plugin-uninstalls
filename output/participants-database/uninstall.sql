-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_session_db_version', 'xnau-updater-notice-plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_id_store';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%csv_import_params';
DELETE FROM wp_options WHERE option_name LIKE '%-initial-tz';
DELETE FROM wp_options WHERE option_name LIKE '%final-report';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

