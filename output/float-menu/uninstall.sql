-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

