-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_licence_key';
DELETE FROM wp_options WHERE option_name LIKE '%_email';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_key_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_errors';

