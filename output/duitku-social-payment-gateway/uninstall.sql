-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duitku_environment', 'duitku_merchant_code', 'duitku_api_key', 'duitku_prefix', 'duitku_debug');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

