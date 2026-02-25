-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pazzey_google_maps_api_key', 'pazzey_import_errors_report', 'pazzey_import_data', 'pazzey_import_filename', 'pazzey_import_results');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pazzey_lat', 'pazzey_lng', 'pazzey_address', 'pazzey_city', 'pazzey_state', 'pazzey_country', 'pazzey_postal');
DELETE FROM wp_usermeta WHERE meta_key IN ('pazzey_lat', 'pazzey_lng', 'pazzey_address', 'pazzey_city', 'pazzey_state', 'pazzey_country', 'pazzey_postal');
DELETE FROM wp_termmeta WHERE meta_key IN ('pazzey_lat', 'pazzey_lng', 'pazzey_address', 'pazzey_city', 'pazzey_state', 'pazzey_country', 'pazzey_postal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pazzey_lat', 'pazzey_lng', 'pazzey_address', 'pazzey_city', 'pazzey_state', 'pazzey_country', 'pazzey_postal');

