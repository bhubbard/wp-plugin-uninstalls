-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fv_video', 'fv_video_id', 'fv_video_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('fv_video', 'fv_video_id', 'fv_video_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('fv_video', 'fv_video_id', 'fv_video_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fv_video', 'fv_video_id', 'fv_video_img');

