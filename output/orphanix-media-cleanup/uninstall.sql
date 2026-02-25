-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orphanix_last_live_scan_at', 'orphanix_last_live_scan_status', 'orphanix_last_live_scan_mode', 'orphanix_scan_compat', 'orphanix_delete_on_uninstall', 'orphanix_db_version', 'orphanix_db_migrated', 'widget_media_image', 'widget_media_gallery', 'orphanix_live_scan_archives');
DELETE FROM wp_options WHERE option_name LIKE '%_progress';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_processing';
DELETE FROM wp_options WHERE option_name LIKE 'orphanix_live_scan_progress_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

