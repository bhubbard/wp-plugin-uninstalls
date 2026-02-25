-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbg_google_maps_lat', 'bbg_google_maps_lng');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbg_google_maps_lat', 'bbg_google_maps_lng');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbg_google_maps_lat', 'bbg_google_maps_lng');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbg_google_maps_lat', 'bbg_google_maps_lng');

