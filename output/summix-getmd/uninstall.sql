-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('summix_getmd_db_version', 'summix_getmd_frontend_view_enabled', 'summix_getmd_settings', 'summix_getmd_capabilities_cached', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_export_files_%';
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_export_progress_%';
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_media_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_export_single_content_%';
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_export_media_%';
DELETE FROM wp_options WHERE option_name LIKE 'summix_getmd_media_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'summix_getmd_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'summix_getmd_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'summix_getmd_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'summix_getmd_settings');

