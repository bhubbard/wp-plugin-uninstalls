-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('store_locator_goong_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_store_address', '_store_hotline', '_store_hours', '_store_lat', '_store_lng', '_store_google_maps_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_store_address', '_store_hotline', '_store_hours', '_store_lat', '_store_lng', '_store_google_maps_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_store_address', '_store_hotline', '_store_hours', '_store_lat', '_store_lng', '_store_google_maps_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_store_address', '_store_hotline', '_store_hours', '_store_lat', '_store_lng', '_store_google_maps_url');

