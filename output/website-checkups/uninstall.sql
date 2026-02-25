-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('website_checkups_token');
DELETE FROM wp_options WHERE option_name LIKE '%_token';
DELETE FROM wp_options WHERE option_name LIKE '%_field_definitions';

