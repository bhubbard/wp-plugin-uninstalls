-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'kwc_usgs_admin-%';
DELETE FROM wp_options WHERE option_name LIKE 'kwc_usgs-%';

