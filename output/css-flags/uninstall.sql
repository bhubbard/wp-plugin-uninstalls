-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CSS_Flags', 'css-flags-all-countries', 'css-flags-all-regions');

