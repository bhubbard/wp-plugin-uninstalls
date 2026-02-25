-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foogallery_albums_capabilities_set', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'foogallery_admin_rating_notice_dismiss', 'foogallery_admin_foobar_notice_dismiss', 'foogallery_capabilities_set', 'foo-video_licensekey', 'polylang', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_url', 'custom_target', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', '_foogallery_custom_class', 'foogallery_crop_pos', 'foogallery_override_thumbnail', '_data-width', '_data-height', '_foobox_panning', '_foogallery_override_type', '_foogallery_override_thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_url', 'custom_target', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', '_foogallery_custom_class', 'foogallery_crop_pos', 'foogallery_override_thumbnail', '_data-width', '_data-height', '_foobox_panning', '_foogallery_override_type', '_foogallery_override_thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_url', 'custom_target', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', '_foogallery_custom_class', 'foogallery_crop_pos', 'foogallery_override_thumbnail', '_data-width', '_data-height', '_foobox_panning', '_foogallery_override_type', '_foogallery_override_thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_url', 'custom_target', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', '_foogallery_custom_class', 'foogallery_crop_pos', 'foogallery_override_thumbnail', '_data-width', '_data-height', '_foobox_panning', '_foogallery_override_type', '_foogallery_override_thumbnail');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

