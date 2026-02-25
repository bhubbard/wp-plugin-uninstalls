-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wow_license_key_fmp', 'wow_license_status_fmp');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'wow_license_status_%';

