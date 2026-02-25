-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stream_player_read_upgrades', 'stream_player_read_notices', 'stream_player_launch_offer_dismissed', 'stream_player_launch_offer_accepted', 'stream_player_subscribed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_first_install';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stream_player_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('stream_player_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('stream_player_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stream_player_state');

