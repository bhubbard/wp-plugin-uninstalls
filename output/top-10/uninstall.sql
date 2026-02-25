-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tptn_db_version', 'tptn_settings', 'tptn_show_wizard', 'tptn_wizard_notice_dismissed', 'active_sitewide_plugins', 'ald_tptn_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'tptn_show_wizard_activation_redirect', 'tptn_deactivated_notice_id', 'tptn_deactivated_notice', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tptn_post_meta', '_video_thumbnail', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('tptn_post_meta', '_video_thumbnail', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('tptn_post_meta', '_video_thumbnail', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tptn_post_meta', '_video_thumbnail', '_wp_attachment_image_alt');

