-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%table_countries';
DELETE FROM wp_options WHERE option_name LIKE '%table_addresses';
DELETE FROM wp_options WHERE option_name LIKE '%table_ipv6';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%update_ipv4_url';
DELETE FROM wp_options WHERE option_name LIKE '%update_ipv6_url';
DELETE FROM wp_options WHERE option_name LIKE '%update_source';

