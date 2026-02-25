-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('install_transcoder_admin_notice', 'rtmedia-options', 'godam_plugin_activated_once', 'rtm-media-enable', 'rtm-media-type', 'rtm-media-default-count', 'rtm-recount-success', 'rtm-recount-fail', 'rtm-settings-saved', 'bp_media_bp_album_favorite_import_status', 'bp_media_bp_album_importer_base_path', 'rtmedia_activity_upgrade_notice', 'rtmedia_media_size_import_notice', 'rt_image_size_migration_fix', '_bp_theme_package_id', 'is_permalink_reset', 'rtmedia-encoding-api-key', 'rtgodam-settings');
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE 'group_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtm_filter_blog_activity_%';
DELETE FROM wp_options WHERE option_name LIKE 'check_rtmedia_license_verifiction_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('install_godam_hide_notice', 'comment_notification_id', 'bp-media-key', 'bp_media_child_activity', 'bp_media_privacy', 'bp_favorite_activities', 'rtmedia_imported_activity', '_wp_attached_file', '_wp_attachment_backup_sizes', '_instagram_thumbs', '_instagram_full_images', '_instagram_metadata', 'bp-media-encoding-job-id', 'bp_media_thumbnail_ids', 'bp_media_thumbnail', 'bp_media_ffmpeg_remote_id', 'bp_media_kaltura_remote_id', 'activity_id', 'register_source', 'rtmedia_comment_media_id', 'rtmedia_featured_media', 'bp_media_featured_media', 'rtmedia_liked_media', 'rtmedia-default-privacy', '_rt_media_source', '_rt_media_transcoded_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('install_godam_hide_notice', 'comment_notification_id', 'bp-media-key', 'bp_media_child_activity', 'bp_media_privacy', 'bp_favorite_activities', 'rtmedia_imported_activity', '_wp_attached_file', '_wp_attachment_backup_sizes', '_instagram_thumbs', '_instagram_full_images', '_instagram_metadata', 'bp-media-encoding-job-id', 'bp_media_thumbnail_ids', 'bp_media_thumbnail', 'bp_media_ffmpeg_remote_id', 'bp_media_kaltura_remote_id', 'activity_id', 'register_source', 'rtmedia_comment_media_id', 'rtmedia_featured_media', 'bp_media_featured_media', 'rtmedia_liked_media', 'rtmedia-default-privacy', '_rt_media_source', '_rt_media_transcoded_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('install_godam_hide_notice', 'comment_notification_id', 'bp-media-key', 'bp_media_child_activity', 'bp_media_privacy', 'bp_favorite_activities', 'rtmedia_imported_activity', '_wp_attached_file', '_wp_attachment_backup_sizes', '_instagram_thumbs', '_instagram_full_images', '_instagram_metadata', 'bp-media-encoding-job-id', 'bp_media_thumbnail_ids', 'bp_media_thumbnail', 'bp_media_ffmpeg_remote_id', 'bp_media_kaltura_remote_id', 'activity_id', 'register_source', 'rtmedia_comment_media_id', 'rtmedia_featured_media', 'bp_media_featured_media', 'rtmedia_liked_media', 'rtmedia-default-privacy', '_rt_media_source', '_rt_media_transcoded_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('install_godam_hide_notice', 'comment_notification_id', 'bp-media-key', 'bp_media_child_activity', 'bp_media_privacy', 'bp_favorite_activities', 'rtmedia_imported_activity', '_wp_attached_file', '_wp_attachment_backup_sizes', '_instagram_thumbs', '_instagram_full_images', '_instagram_metadata', 'bp-media-encoding-job-id', 'bp_media_thumbnail_ids', 'bp_media_thumbnail', 'bp_media_ffmpeg_remote_id', 'bp_media_kaltura_remote_id', 'activity_id', 'register_source', 'rtmedia_comment_media_id', 'rtmedia_featured_media', 'bp_media_featured_media', 'rtmedia_liked_media', 'rtmedia-default-privacy', '_rt_media_source', '_rt_media_transcoded_files');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtm-bp-media-like-activity-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtm-bp-media-like-activity-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtm-bp-media-like-activity-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtm-bp-media-like-activity-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtmedia_counts_%';

