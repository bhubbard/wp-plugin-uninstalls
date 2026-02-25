-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carticy_checkout_shield_mode', 'carticy_checkout_shield_whitelisted_ips', 'carticy_checkout_shield_activated', 'carticy_checkout_shield_enabled', 'carticy_checkout_shield_delete_data_on_uninstall', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

