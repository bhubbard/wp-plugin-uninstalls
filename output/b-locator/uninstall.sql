-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b_locator');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_location_long', '_location_lat', '_location_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_location_long', '_location_lat', '_location_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_location_long', '_location_lat', '_location_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_location_long', '_location_lat', '_location_details');

