-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_geo_show_version_msg', 'wp_geo_options', 'wp_geo_version');

