-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_active_pages';
DELETE FROM wp_options WHERE option_name LIKE '%_active_entries';
DELETE FROM wp_options WHERE option_name LIKE '%_active_products';
DELETE FROM wp_options WHERE option_name LIKE '%_active_custom_types';

