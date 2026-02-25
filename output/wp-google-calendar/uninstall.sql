-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('events_database_version', 'api_setting_database_version', 'google_cal_file');

