-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fae_cursor_options', 'fae_keyboard_options', 'fae_particle_options', 'active_sitewide_plugins', 'faecursor_activated_time', 'faecursor_review_status', 'faecursor_review_later_time', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

