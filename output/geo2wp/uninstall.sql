-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo2wp_options', 'phototools_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'EXIF_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'EXIF_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'EXIF_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'EXIF_location');

