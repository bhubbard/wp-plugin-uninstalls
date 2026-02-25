-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sherloq_api_activation', 'sherloq_api_version', 'sherloq_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_general_database_settings';
DELETE FROM wp_options WHERE option_name LIKE 'sherloq_api_form_%';

