-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('license_envato_token_valid', 'license_envato_token_secret', 'license_envato_installed', 'LICENSE_ENVATO_VERSION');
DELETE FROM wp_options WHERE option_name LIKE '%_envato_token';
DELETE FROM wp_options WHERE option_name LIKE '%_envato_is_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_envato_itemid';
DELETE FROM wp_options WHERE option_name LIKE '%_envato_purchase_code';

