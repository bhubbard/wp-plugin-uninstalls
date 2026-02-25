-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swti_options_player', 'swti_options_rail', 'swti_options_status', 'swti_options_vods', 'swti_options_wall', 'swti_options', 'swti_translations', 'swti_debug_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'swti_options_feature', 'swti_options_nav', 'swti_twitch_token_expires', 'swti_notice_closed5', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'swti_twitch_token', 'swti_twitch_auth_token', 'swti_twitch_auth_token_expires');
DELETE FROM wp_options WHERE option_name LIKE 'swti_game_%';
DELETE FROM wp_options WHERE option_name LIKE 'swti_team_%';
DELETE FROM wp_options WHERE option_name LIKE 'swti_channel_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_channel_status', '_team_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_channel_status', '_team_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_channel_status', '_team_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_channel_status', '_team_status');

