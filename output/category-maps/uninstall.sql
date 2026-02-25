-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catmaps_options', 'catmaps_license');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('catmaps_address', 'catmaps_latitude', 'catmaps_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('catmaps_address', 'catmaps_latitude', 'catmaps_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('catmaps_address', 'catmaps_latitude', 'catmaps_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('catmaps_address', 'catmaps_latitude', 'catmaps_longitude');

