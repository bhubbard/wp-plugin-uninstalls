-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('warmer-page-timeout', 'warmer-server-timeout', 'warmer-request-delay', 'warmer-media-urls', 'warmer_show_welcome', 'warmer-automation-schedule', 'warmer-cache-update-warm', 'warmer-post-update-warm', 'warmer-webhook-enabled', 'warmer_webhook_secret', 'warmer-cli-enabled', 'warmer-posts-urls', 'warmer-pages-urls', 'warmer-category-urls', 'warmer-tag-urls', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-urls';

