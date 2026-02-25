-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('duration', 'neat_slides', 'slider_settings', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('duration', 'neat_slides', 'slider_settings', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('duration', 'neat_slides', 'slider_settings', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('duration', 'neat_slides', 'slider_settings', '_thumbnail_id');

