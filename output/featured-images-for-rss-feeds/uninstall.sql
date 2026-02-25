-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featured_images_in_rss_size', 'featured_images_in_rss_css', 'featured_images_in_rss_padding', 'featured_images_in_rss_clickable_link', 'featured_images_in_rss_thumb_size_w', 'featured_images_in_rss_thumb_size_h', 'featured_images_in_rss_media_tag_disable_content_images', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

