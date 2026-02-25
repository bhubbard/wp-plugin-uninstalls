-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

