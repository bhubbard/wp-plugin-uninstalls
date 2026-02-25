-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'sliders_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'sliders_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'sliders_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'sliders_meta');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta';

