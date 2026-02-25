-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_region';
DELETE FROM wp_options WHERE option_name LIKE '%_key';
DELETE FROM wp_options WHERE option_name LIKE '%_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_active_adapter';
DELETE FROM wp_options WHERE option_name LIKE '%_from_name';
DELETE FROM wp_options WHERE option_name LIKE '%_from_email';
DELETE FROM wp_options WHERE option_name LIKE '%_hijack_wp_mail';
DELETE FROM wp_options WHERE option_name LIKE '%_customer_id';
DELETE FROM wp_options WHERE option_name LIKE '%_account_sid';
DELETE FROM wp_options WHERE option_name LIKE '%_auth_token';
DELETE FROM wp_options WHERE option_name LIKE '%_from';

