-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mapInEachPost_post_types', 'mapineachpost_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', '_map_in_each_post_notice_dismissed', '_mapineachpost_points', '_enable_mapineachpost_points');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', '_map_in_each_post_notice_dismissed', '_mapineachpost_points', '_enable_mapineachpost_points');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', '_map_in_each_post_notice_dismissed', '_mapineachpost_points', '_enable_mapineachpost_points');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', '_map_in_each_post_notice_dismissed', '_mapineachpost_points', '_enable_mapineachpost_points');

