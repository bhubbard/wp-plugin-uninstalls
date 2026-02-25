-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings_error';
DELETE FROM wp_options WHERE option_name LIKE '%_wpscan_error';
DELETE FROM wp_options WHERE option_name LIKE '%_webhook_error';

