-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'google_oauth_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'labels_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'labels_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'labels_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'labels_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sound_file_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sound_file_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sound_file_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sound_file_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'icon_file_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'icon_file_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'icon_file_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'icon_file_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'is_premium_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'is_premium_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'is_premium_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'is_premium_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'requires_login_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'requires_login_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'requires_login_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'requires_login_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sound_volume_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sound_volume_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sound_volume_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sound_volume_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'type_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'video_file_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'video_file_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'video_file_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'video_file_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'video_icon_file_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'video_icon_file_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'video_icon_file_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'video_icon_file_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bk_image_file_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bk_image_file_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bk_image_file_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bk_image_file_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'background_credits_label_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'background_credits_label_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'background_credits_label_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'background_credits_label_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'background_credits_url_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'background_credits_url_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'background_credits_url_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'background_credits_url_%';

