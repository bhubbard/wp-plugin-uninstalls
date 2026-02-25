-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfais_last_core_report', 'sfais_last_content_report', 'sfais_backup_manual_found', 'sfais_backup_manual_age_ok', 'sfais_manual_strong_passwords', 'sfais_manual_2fa_enabled', 'sfais_last_quick_check', 'sfais_patch_dirlisting_last_report', 'sfais_last_quick_rating', 'sfais_patch_versioninfo', 'sfais_patch_xmlrpc', 'sfais_patch_dirlisting', 'sfais_patch_permissions_last_report', 'sfais_patch_permissions', 'sfais_patch_filemods', 'sfais_htaccess_safe', 'sfais_patch_fileedit', 'sfais_blocked_ips', 'active_sitewide_plugins', 'mhsf_optin_notice_dismissed', 'mhsf_show_optin_notice', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'mhsf_upgrade_error', 'sfais_upgrade_error', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'mhsf_fs_return_%';

