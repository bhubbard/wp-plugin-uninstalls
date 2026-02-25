-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaira_sitechat_options', 'active_sitewide_plugins', 'wa_sitechat_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kaira_scp_install_notice_dismiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('kaira_scp_install_notice_dismiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('kaira_scp_install_notice_dismiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kaira_scp_install_notice_dismiss');

