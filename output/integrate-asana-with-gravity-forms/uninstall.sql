-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iawgf_migrated_slug_to_new', 'iawgf_backup_settings', 'iawgf_settings_source', 'iawgf_fs_access_token', 'iawgf_fs_refresh_token', 'iawgf_rating_asked', 'iawgf_task_creation_count', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'oauth_state', 'oauth_code_verifier', 'update_plugins', 'gops_error', 'gops_notice', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%rating_asked';

