-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfv_thumb_width', 'gfv_thumb_height', 'gfv_thumb_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gfv_video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gfv_video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gfv_video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gfv_video_url');

