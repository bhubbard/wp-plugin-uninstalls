-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pv_height', 'pv_width', 'pv_single_only', 'pv_float', 'pv_widget_title', 'pv_in_post', 'pv_in_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pv_in_widget', 'pv_video', 'pv_video_text', 'pv_height', 'pv_width', 'pv_float', 'pv_in_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('pv_in_widget', 'pv_video', 'pv_video_text', 'pv_height', 'pv_width', 'pv_float', 'pv_in_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('pv_in_widget', 'pv_video', 'pv_video_text', 'pv_height', 'pv_width', 'pv_float', 'pv_in_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pv_in_widget', 'pv_video', 'pv_video_text', 'pv_height', 'pv_width', 'pv_float', 'pv_in_post');

