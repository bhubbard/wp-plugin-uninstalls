-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocv_video_post_title', 'ocv_video_post_description', 'ocv_video_width', 'ocv_video_height', 'ocv_syndication_key', 'ocv_video_autoplay', 'ocv_video_post_format', 'ocv_video_post_status', 'ocv_custom_field_video_embed', 'youtube_related', 'youtube_controls', 'youtube_showinfo', 'ocv_related', 'ocv_controls', 'ocv_showinfo', 'youtube_size', 'ocv_size', 'vimeo_size', 'youtube_autoplay', 'vimeo_autoplay', 'parent_cat_id_hidden', 'child_cat_id_hidden', 'subchild_cat_id_hidden', 'ocv_familyfilter', 'youtube_public_key', 'vimeo_client_id', 'vimeo_client_secret', 'vimeo_parent_cat_id_hidden', 'vimeo_child_cat_id_hidden', 'vimeo_subchild_cat_id_hidden', 'youtube_parent_cat_id_hidden', 'youtube_child_cat_id_hidden', 'youtube_subchild_cat_id_hidden', 'video_source');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('time_video');
DELETE FROM wp_usermeta WHERE meta_key IN ('time_video');
DELETE FROM wp_termmeta WHERE meta_key IN ('time_video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('time_video');

