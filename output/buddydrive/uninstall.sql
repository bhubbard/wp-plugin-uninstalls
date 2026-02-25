-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', '_buddydrive_db_version', '_buddydrive_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', '_buddydrive_is_new_install', '_buddydrive_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buddydrive_user_quota', '_buddydrive_sharing_groups', '_buddydrive_sharing_members', '_buddydrive_total_space', '_buddydrive_sharing_option', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buddydrive_user_quota', '_buddydrive_sharing_groups', '_buddydrive_sharing_members', '_buddydrive_total_space', '_buddydrive_sharing_option', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buddydrive_user_quota', '_buddydrive_sharing_groups', '_buddydrive_sharing_members', '_buddydrive_total_space', '_buddydrive_sharing_option', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buddydrive_user_quota', '_buddydrive_sharing_groups', '_buddydrive_sharing_members', '_buddydrive_total_space', '_buddydrive_sharing_option', '_wp_attachment_metadata');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

