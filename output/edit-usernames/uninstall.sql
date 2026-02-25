-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eun_activated_on', 'eun_setting_options');
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%edit_admin';

