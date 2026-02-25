-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spots_norobots', 'spots_cache_time', 'spots_do_once_setup');
DELETE FROM wp_options WHERE option_name LIKE '%_setup';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spot_part', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spot_part', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spot_part', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spot_part', '_thumbnail_id');

