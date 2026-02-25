-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themeforce_yelpbar_options', 'themeforce_yelpbar_json', 'themeforce_yelpbar_json');

