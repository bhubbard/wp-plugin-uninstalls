-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usdigitarget_google_maps_api_key', 'usdigitarget_google_maps_enabled');

