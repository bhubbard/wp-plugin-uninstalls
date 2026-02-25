-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplemaps_first_map_id', 'sm_settings', 'simplemaps_mapdata_url', 'simplemaps_mapfile_url', 'simplemaps_legacy_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_map_file_url', '_map_data_url', '_is_protected');
DELETE FROM wp_usermeta WHERE meta_key IN ('_map_file_url', '_map_data_url', '_is_protected');
DELETE FROM wp_termmeta WHERE meta_key IN ('_map_file_url', '_map_data_url', '_is_protected');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_map_file_url', '_map_data_url', '_is_protected');

