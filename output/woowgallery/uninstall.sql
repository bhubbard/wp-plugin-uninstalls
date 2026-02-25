-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woowgallery_version', 'woowgallery_install_date', 'woowgallery_options', 'woowgallery_notices', 'rewrite_rules', 'woowgallery_rest_token', 'instagram_access_token', 'instagram_token_updated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'woowgallery_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_media_copyright', '_woowgallery', '_woowgallery_id', '_woowgallery_status', '_woowgallery_posts', '_data_before', '_woowgallery_galleries');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_media_copyright', '_woowgallery', '_woowgallery_id', '_woowgallery_status', '_woowgallery_posts', '_data_before', '_woowgallery_galleries');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_media_copyright', '_woowgallery', '_woowgallery_id', '_woowgallery_status', '_woowgallery_posts', '_data_before', '_woowgallery_galleries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_media_copyright', '_woowgallery', '_woowgallery_id', '_woowgallery_status', '_woowgallery_posts', '_data_before', '_woowgallery_galleries');

