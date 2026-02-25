-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meta_field_block_activation_redirect', 'mfb_current_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'mfb_docs', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

