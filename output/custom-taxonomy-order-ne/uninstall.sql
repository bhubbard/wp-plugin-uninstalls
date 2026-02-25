-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customtaxorder_settings', 'customtaxorder_taxonomies', 'customtaxorder_get_settings');

