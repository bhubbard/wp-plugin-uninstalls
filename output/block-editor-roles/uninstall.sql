-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bledro_allowed_blocks_edit', 'bledro_allowed_blocks_add', 'bledro_custom_allowed_blocks', 'bledro_disable_list_view', 'bledro_disabled_roles', 'bledro_disable_block_insertion', 'bledro_allowed_pattern_categories', 'bledro_allow_pattern_insertion', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

