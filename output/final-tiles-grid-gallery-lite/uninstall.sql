-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftg_review', 'FinalTiles_gallery_db_version', 'FinalTiles_gallery_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ftg_link', '_ftg_target', 'ftg_filters', 'ftg_group', 'ftg_image_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ftg_link', '_ftg_target', 'ftg_filters', 'ftg_group', 'ftg_image_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ftg_link', '_ftg_target', 'ftg_filters', 'ftg_group', 'ftg_image_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ftg_link', '_ftg_target', 'ftg_filters', 'ftg_group', 'ftg_image_url', '_wp_attachment_image_alt');

