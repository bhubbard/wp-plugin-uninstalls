-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('searchstorm_category1', 'searchstorm_category2', 'searchstorm_category3', 'searchstorm_category4', 'searchstorm_css');

