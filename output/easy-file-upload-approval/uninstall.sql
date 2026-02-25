-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyfua_settings');
DELETE FROM wp_options WHERE option_name LIKE 'easyfua_settings%';

