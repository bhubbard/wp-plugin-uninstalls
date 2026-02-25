-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'jamat_time_json_path_%';
DELETE FROM wp_options WHERE option_name LIKE 'jamat_time_json_url_%';

