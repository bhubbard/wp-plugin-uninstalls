-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artesans_search_redirect_field1');
DELETE FROM wp_options WHERE option_name LIKE '%_field1';

