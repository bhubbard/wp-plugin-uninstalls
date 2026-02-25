-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('string-locator-search-history', 'string-locator-search-overview');
DELETE FROM wp_options WHERE option_name LIKE 'string-locator-search-files-%';

