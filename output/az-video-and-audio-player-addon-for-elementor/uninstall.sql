-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leanpl_installed_time', 'leanpl_demos_created', 'vapfem_installed_time', 'leanpl_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('___controls_order', '_audio_source_type', '_audio_source', '_html5_audio_url', '_video_type', '_youtube_url', '_vimeo_url', '_html5_source_type', '_video_source', '_html5_video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('___controls_order', '_audio_source_type', '_audio_source', '_html5_audio_url', '_video_type', '_youtube_url', '_vimeo_url', '_html5_source_type', '_video_source', '_html5_video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('___controls_order', '_audio_source_type', '_audio_source', '_html5_audio_url', '_video_type', '_youtube_url', '_vimeo_url', '_html5_source_type', '_video_source', '_html5_video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('___controls_order', '_audio_source_type', '_audio_source', '_html5_audio_url', '_video_type', '_youtube_url', '_vimeo_url', '_html5_source_type', '_video_source', '_html5_video_url');

