-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sacksonweb_premium_settings_option_name');
DELETE FROM wp_options WHERE option_name LIKE 'sacksonweb_collected_data-%';
DELETE FROM wp_options WHERE option_name LIKE 'sacksonweb_last_log-%';

