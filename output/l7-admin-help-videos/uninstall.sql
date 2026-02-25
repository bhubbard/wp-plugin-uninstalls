-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('l7_admin_help_video_options', 'l7whv_help_video_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('help_video_post_youtube', 'help_video_post_vimeo', 'help_video_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('help_video_post_youtube', 'help_video_post_vimeo', 'help_video_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('help_video_post_youtube', 'help_video_post_vimeo', 'help_video_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('help_video_post_youtube', 'help_video_post_vimeo', 'help_video_post');

