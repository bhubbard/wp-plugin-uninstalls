-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_location_address', '_location_address_full', '_location_lat', '_location_long');
DELETE FROM wp_usermeta WHERE meta_key IN ('_location_address', '_location_address_full', '_location_lat', '_location_long');
DELETE FROM wp_termmeta WHERE meta_key IN ('_location_address', '_location_address_full', '_location_lat', '_location_long');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_location_address', '_location_address_full', '_location_lat', '_location_long');

