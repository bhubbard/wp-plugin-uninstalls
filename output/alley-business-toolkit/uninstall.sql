-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__alley_business_toolkit_do_redirect', 'alley-business-toolkit-update-notice', 'active_sitewide_plugins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_active_plugins', 'fs_storage_logger', 'alley_business_toolkit_deactivated_notice_id', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('abt_disclaimer', 'abt_source', 'abt_source_link', 'abt_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('abt_disclaimer', 'abt_source', 'abt_source_link', 'abt_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('abt_disclaimer', 'abt_source', 'abt_source_link', 'abt_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('abt_disclaimer', 'abt_source', 'abt_source_link', 'abt_position');

