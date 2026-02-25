-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_device_types';
DELETE FROM wp_options WHERE option_name LIKE '%_excluded_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_excluded_types';
DELETE FROM wp_options WHERE option_name LIKE '%_excluded_terms';
DELETE FROM wp_options WHERE option_name LIKE '%_user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_load_admin_js';

