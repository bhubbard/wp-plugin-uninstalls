-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdn_options');
DELETE FROM wp_options WHERE option_name LIKE '%root_url';
DELETE FROM wp_options WHERE option_name LIKE '%api_token';
DELETE FROM wp_options WHERE option_name LIKE '%pager';

