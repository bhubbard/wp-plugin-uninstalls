-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_params';
DELETE FROM wp_options WHERE option_name LIKE '%_file_limit';

