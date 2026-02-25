-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acs-advanced-custom-search-settings');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

