-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ZelleEmailReceiptsKey', 'zmail_integ_from_email_id', 'zmail_integ_from_name', 'zmail_refresh_token', 'zmail_auth_code', 'zmail_integ_timestamp', 'zmail_integ_domain_name', 'zmail_integ_client_id', 'zmail_integ_client_secret', 'zmail_access_token', 'zmail_account_id', 'zmail_content_type', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');

