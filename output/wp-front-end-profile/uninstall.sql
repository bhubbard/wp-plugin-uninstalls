-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpfep_page_created', 'wpfep_profile', 'wpfep_pages', 'wpfep_general', 'wpfep_uninstall', 'active_sitewide_plugins', 'wpfep_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_active_plugins', 'fs_storage_logger', 'wpfep_Ask_Review_Date', 'wpfep_Install_Time', 'wpfep_install_time', 'wpfep_roles_editor_capabilities', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpfep_user_status', 'verify', 'has_to_be_activated', '_wpfep_user_active', 'wpfep_role_slug', '_wpfep_activation_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpfep_user_status', 'verify', 'has_to_be_activated', '_wpfep_user_active', 'wpfep_role_slug', '_wpfep_activation_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpfep_user_status', 'verify', 'has_to_be_activated', '_wpfep_user_active', 'wpfep_role_slug', '_wpfep_activation_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpfep_user_status', 'verify', 'has_to_be_activated', '_wpfep_user_active', 'wpfep_role_slug', '_wpfep_activation_key');

