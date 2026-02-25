-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'seculoco_migration_success', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'seculoco_bulk_export_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seculoco_passkeys', 'seculoco_passkey_challenge', 'seculoco_wrapped_master_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('seculoco_passkeys', 'seculoco_passkey_challenge', 'seculoco_wrapped_master_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('seculoco_passkeys', 'seculoco_passkey_challenge', 'seculoco_wrapped_master_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seculoco_passkeys', 'seculoco_passkey_challenge', 'seculoco_wrapped_master_key');

