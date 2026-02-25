-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockish_version', 'blockish_installed_time', 'blockish_inactive_blocks', 'blockish_device_list');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_list';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

