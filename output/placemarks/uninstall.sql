-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('placemarks_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('placemarks-lat', 'placemarks-lng', 'placemarks-location', 'placemarks-locations', 'placemarks-title', 'placemarks-bubble', 'placemarks-type', 'placemarks-link');
DELETE FROM wp_usermeta WHERE meta_key IN ('placemarks-lat', 'placemarks-lng', 'placemarks-location', 'placemarks-locations', 'placemarks-title', 'placemarks-bubble', 'placemarks-type', 'placemarks-link');
DELETE FROM wp_termmeta WHERE meta_key IN ('placemarks-lat', 'placemarks-lng', 'placemarks-location', 'placemarks-locations', 'placemarks-title', 'placemarks-bubble', 'placemarks-type', 'placemarks-link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('placemarks-lat', 'placemarks-lng', 'placemarks-location', 'placemarks-locations', 'placemarks-title', 'placemarks-bubble', 'placemarks-type', 'placemarks-link');

