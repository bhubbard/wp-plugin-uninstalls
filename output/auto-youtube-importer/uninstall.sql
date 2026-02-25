-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('secondline_latest_timestamp', 'secondline_attachment_md5', 'secondline_imported_youtube_video_id', 'secondline_themes_external_embed', 'secondline_themes_parent_show_post', 'secondline_import_import_type', 'secondline_youtube_playlist_id', 'secondline_youtube_channel_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('secondline_latest_timestamp', 'secondline_attachment_md5', 'secondline_imported_youtube_video_id', 'secondline_themes_external_embed', 'secondline_themes_parent_show_post', 'secondline_import_import_type', 'secondline_youtube_playlist_id', 'secondline_youtube_channel_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('secondline_latest_timestamp', 'secondline_attachment_md5', 'secondline_imported_youtube_video_id', 'secondline_themes_external_embed', 'secondline_themes_parent_show_post', 'secondline_import_import_type', 'secondline_youtube_playlist_id', 'secondline_youtube_channel_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('secondline_latest_timestamp', 'secondline_attachment_md5', 'secondline_imported_youtube_video_id', 'secondline_themes_external_embed', 'secondline_themes_parent_show_post', 'secondline_import_import_type', 'secondline_youtube_playlist_id', 'secondline_youtube_channel_id');

