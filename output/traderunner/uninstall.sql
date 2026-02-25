-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_connection_key';
DELETE FROM wp_options WHERE option_name LIKE '%_connection_endpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_connection_email';
DELETE FROM wp_options WHERE option_name LIKE '%_connection_name';
DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_account_id';
DELETE FROM wp_options WHERE option_name LIKE '%_google_ads_conversion_id';

