-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enweby_fb_post_field_id', 'enweby_fb_page_field_id', 'enweby_fb_display_options', 'enweby_fb_background_type', 'enweby_fb_bg_image', 'enweby_fb_bg_video', 'enweby_fb_bg_color', 'enweby_fb_background_size', 'enweby_fb_background_position', 'enweby_fb_background_attachment', 'enweby_fb_overlay_shadow', 'enweby_fb_video_background_position', 'enweby_fb_video_background_fit', 'enweby_fullscreen_background_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enwb_fb_settings_meta_single');
DELETE FROM wp_usermeta WHERE meta_key IN ('enwb_fb_settings_meta_single');
DELETE FROM wp_termmeta WHERE meta_key IN ('enwb_fb_settings_meta_single');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enwb_fb_settings_meta_single');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-optin-screen';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-optin-screen';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-optin-screen';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-optin-screen';

