-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_wipe_settings', 'media_wipe_activity_log', 'media_wipe_security_log', 'widget_media_image', 'media_wipe_version', 'media_wipe_scan_progress', 'media_wipe_unused_results');
DELETE FROM wp_options WHERE option_name LIKE '%_delete_selected';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_all';
DELETE FROM wp_options WHERE option_name LIKE '%_fetch_media';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('media_wipe_dismissed_notices', 'media_wipe_notification_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('media_wipe_dismissed_notices', 'media_wipe_notification_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('media_wipe_dismissed_notices', 'media_wipe_notification_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('media_wipe_dismissed_notices', 'media_wipe_notification_preferences');

