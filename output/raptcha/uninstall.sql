-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raptcha_settings', 'raptcha_core_settings');
DELETE FROM wp_options WHERE option_name LIKE 'raptcha_challenge_%';
DELETE FROM wp_options WHERE option_name LIKE 'raptcha_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'raptcha_files_%';

