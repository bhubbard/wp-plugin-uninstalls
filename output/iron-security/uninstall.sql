-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpironis_plugin_settings_loginlogout', 'wpironis_plugin_settings_general', 'wpironis_options', 'auto_update_core_major', 'auto_update_core_minor', 'auto_update_core_dev', 'iron_security_last_activity', 'iron_security_2fa_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_wpis_attempts';
DELETE FROM wp_options WHERE option_name LIKE '%_wpis_lockout';
DELETE FROM wp_options WHERE option_name LIKE '%_wpis_lockout_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iron_security_last_activity', 'iron_security_2fa_secret', 'nickname', 'google_authenticator_secret');
DELETE FROM wp_usermeta WHERE meta_key IN ('iron_security_last_activity', 'iron_security_2fa_secret', 'nickname', 'google_authenticator_secret');
DELETE FROM wp_termmeta WHERE meta_key IN ('iron_security_last_activity', 'iron_security_2fa_secret', 'nickname', 'google_authenticator_secret');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iron_security_last_activity', 'iron_security_2fa_secret', 'nickname', 'google_authenticator_secret');

