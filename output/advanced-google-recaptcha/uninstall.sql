-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agr_options', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wpcaptcha_unlock_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcaptcha_unlock_%';

