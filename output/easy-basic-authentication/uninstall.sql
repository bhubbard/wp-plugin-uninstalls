-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_auth_plugin_admin_enable', 'basic_auth_plugin_enable', 'basic_auth_plugin_username', 'basic_auth_plugin_password', 'basic_auth_plugin_whitelist', 'basic_auth_plugin_urlwhitelist', 'basic_auth_plugin_alert_enable', 'basic_auth_plugin_alertemail', 'basic_auth_plugin_admin_log_enable', 'basic_auth_plugin_remove_data_after_uninstall', 'basic_auth_failure_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', '_easy_basic_authentication_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', '_easy_basic_authentication_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', '_easy_basic_authentication_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', '_easy_basic_authentication_notice_dismissed');

