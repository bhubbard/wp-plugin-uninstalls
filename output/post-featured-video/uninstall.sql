-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pfv_seetings_opt', 'pfv_autoply_video', 'pfv_open_vid_inpopup', 'vpfy_disply_video', 'pfvvideoheight', 'pfv_video_display_only_single_post', 'pfvideo_pst_adminnotice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pfv_vimeo_video_url', '_pfv_custom_vid_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pfv_vimeo_video_url', '_pfv_custom_vid_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pfv_vimeo_video_url', '_pfv_custom_vid_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pfv_vimeo_video_url', '_pfv_custom_vid_url');

