-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rideshare_provider', 'rideshare_id', 'rideshare_type', 'raw_import_data', 'geo_polyline_encoded', 'geo_public');
DELETE FROM wp_usermeta WHERE meta_key IN ('rideshare_provider', 'rideshare_id', 'rideshare_type', 'raw_import_data', 'geo_polyline_encoded', 'geo_public');
DELETE FROM wp_termmeta WHERE meta_key IN ('rideshare_provider', 'rideshare_id', 'rideshare_type', 'raw_import_data', 'geo_polyline_encoded', 'geo_public');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rideshare_provider', 'rideshare_id', 'rideshare_type', 'raw_import_data', 'geo_polyline_encoded', 'geo_public');

