-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ails_auto_sync_offset', 'autolinks_sync', 'ails_last_synced_items', 'automatic-internal-links-for-seo', 'ails_onboarding_status', 'autolinks_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ails_badge_count', 'ails_sync_totals', 'ails_auto_sync_lock', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'disable_internal_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'disable_internal_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'disable_internal_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'disable_internal_links');

