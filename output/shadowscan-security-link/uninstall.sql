-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shadowscan_last_error', 'shadowscan_sentry_telemetry_enabled', 'update_plugins', 'update_core', 'update_themes', 'shadowscan_heartbeat_lock', 'shadowscan_pair_notice', 'shadowscan_pair_notice_type');
DELETE FROM wp_options WHERE option_name LIKE 'shadowscan_mfa_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shadowscan_locked_until', 'shadowscan_lock_count', 'shadowscan_lock_reason');
DELETE FROM wp_usermeta WHERE meta_key IN ('shadowscan_locked_until', 'shadowscan_lock_count', 'shadowscan_lock_reason');
DELETE FROM wp_termmeta WHERE meta_key IN ('shadowscan_locked_until', 'shadowscan_lock_count', 'shadowscan_lock_reason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shadowscan_locked_until', 'shadowscan_lock_count', 'shadowscan_lock_reason');

