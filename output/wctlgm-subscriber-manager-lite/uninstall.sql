-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wctlgm_bot_token', 'wctlgm_require_activation_flow', 'wctlgm_allow_external_invites', 'wctlgm_secret_token', 'wctlgm_bot_url', 'wctlgm_channels', 'wctlgm_activation_flow_migrated', 'wctlgm_force_activation_flow', 'wctlgm_webhook_clicked', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wctlgm_telegram_fetch_channel_id_active', 'wctlgm_channel_id_temp_store', 'wctlgm_activation_flow_changed', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_telegram_channel_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_telegram_channel_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_telegram_channel_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_telegram_channel_ids');

