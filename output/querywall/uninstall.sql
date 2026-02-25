-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qwall_settings');
DELETE FROM wp_options WHERE option_name LIKE 'qwall_avc_%';
DELETE FROM wp_options WHERE option_name LIKE 'qwall_%';

