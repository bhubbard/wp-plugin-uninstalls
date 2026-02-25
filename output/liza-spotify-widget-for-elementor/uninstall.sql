-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'liza_spotify_access_token', 'liza_spotify_client_id', 'liza_spotify_client_secret', 'liza_spotify_refresh_token', 'liza_spotify_token_expiry', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ruthless_promo_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ruthless_promo_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ruthless_promo_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ruthless_promo_dismissed');

