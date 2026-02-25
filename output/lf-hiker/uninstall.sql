-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lfh_mapquest_key', 'lfh_distance_unit', 'lfh_height_unit', 'lfh_parent_cache', 'lfh_background_sub', 'lfh_background', 'lfh_cache_parent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lfh_helper_unactive', 'lfh_stroke_color', 'lfh_stroke_width', 'lfh_download_gpx', 'lfh_');
DELETE FROM wp_usermeta WHERE meta_key IN ('lfh_helper_unactive', 'lfh_stroke_color', 'lfh_stroke_width', 'lfh_download_gpx', 'lfh_');
DELETE FROM wp_termmeta WHERE meta_key IN ('lfh_helper_unactive', 'lfh_stroke_color', 'lfh_stroke_width', 'lfh_download_gpx', 'lfh_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lfh_helper_unactive', 'lfh_stroke_color', 'lfh_stroke_width', 'lfh_download_gpx', 'lfh_');

