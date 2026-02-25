-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stellar_places_google_maps_api_key', 'stellar_places_default_map_icon', 'stellar_places_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stlr_places_custom_icon', '_stlr_places_latitude', 'geo_latitude', '_stlr_places_longitude', 'geo_longitude', '_stlr_places_formatted_address', '_stlr_places_street_address', '_stlr_places_locality', '_stlr_places_region', '_stlr_places_postal_code', '_stlr_places_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stlr_places_custom_icon', '_stlr_places_latitude', 'geo_latitude', '_stlr_places_longitude', 'geo_longitude', '_stlr_places_formatted_address', '_stlr_places_street_address', '_stlr_places_locality', '_stlr_places_region', '_stlr_places_postal_code', '_stlr_places_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stlr_places_custom_icon', '_stlr_places_latitude', 'geo_latitude', '_stlr_places_longitude', 'geo_longitude', '_stlr_places_formatted_address', '_stlr_places_street_address', '_stlr_places_locality', '_stlr_places_region', '_stlr_places_postal_code', '_stlr_places_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stlr_places_custom_icon', '_stlr_places_latitude', 'geo_latitude', '_stlr_places_longitude', 'geo_longitude', '_stlr_places_formatted_address', '_stlr_places_street_address', '_stlr_places_locality', '_stlr_places_region', '_stlr_places_postal_code', '_stlr_places_country');

