-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twgm_gmaps_api_key', 'twgm_gmaps_def_lat', 'twgm_gmaps_def_lng', 'twgm_gmaps_def_theme', 'twgm_gmaps_def_zoom', 'plugin_error', 'twgm_db_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_twgm_applymarker', '_twgm_data', '_twgm_category', '_twgm_map');
DELETE FROM wp_usermeta WHERE meta_key IN ('_twgm_applymarker', '_twgm_data', '_twgm_category', '_twgm_map');
DELETE FROM wp_termmeta WHERE meta_key IN ('_twgm_applymarker', '_twgm_data', '_twgm_category', '_twgm_map');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_twgm_applymarker', '_twgm_data', '_twgm_category', '_twgm_map');

