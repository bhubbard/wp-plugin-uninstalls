-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h5vp_option', 'nothdddding', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('h5vp_aws_notice_dismissed', 'h5vp_total_views', 'h5vp_playlist_options', 'isGutenberg', 'h5vp_protected_password', 'h5vp_quality_playerio', 'h5vp_video_link', 'h5vp_video_source', 'h5vp_video_link_youtube_vimeo', 'h5vp_playlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('h5vp_aws_notice_dismissed', 'h5vp_total_views', 'h5vp_playlist_options', 'isGutenberg', 'h5vp_protected_password', 'h5vp_quality_playerio', 'h5vp_video_link', 'h5vp_video_source', 'h5vp_video_link_youtube_vimeo', 'h5vp_playlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('h5vp_aws_notice_dismissed', 'h5vp_total_views', 'h5vp_playlist_options', 'isGutenberg', 'h5vp_protected_password', 'h5vp_quality_playerio', 'h5vp_video_link', 'h5vp_video_source', 'h5vp_video_link_youtube_vimeo', 'h5vp_playlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('h5vp_aws_notice_dismissed', 'h5vp_total_views', 'h5vp_playlist_options', 'isGutenberg', 'h5vp_protected_password', 'h5vp_quality_playerio', 'h5vp_video_link', 'h5vp_video_source', 'h5vp_video_link_youtube_vimeo', 'h5vp_playlist');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

