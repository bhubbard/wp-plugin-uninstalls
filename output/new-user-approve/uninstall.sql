-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'nua_free_invitation', 'nua_app_tokens', 'nua_app_auth_token', 'nua_api_key', 'new_user_approve_options', 'new_user_approve_user_statuses_count', 'nua_zapier_db_version', 'nua_zapier_option_status', 'nua_users_count', 'nua_notification_email_message_as_html', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'nua_plugin_status_cache', 'inv_code_exists', 'new_user_approve_user_statuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'pw_new_user_approve_ignore_notice', 'pw_user_approve_password_reset', 'nua_request_new_role', 'pw_user_status', 'pw_user_status_time', '_mepr_nua_approval', 'nua_invcode_used', 'nua_wl_domain_used', 'nua_user_role_based_approved', 'pw_new_user_approve_has_signed_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'pw_new_user_approve_ignore_notice', 'pw_user_approve_password_reset', 'nua_request_new_role', 'pw_user_status', 'pw_user_status_time', '_mepr_nua_approval', 'nua_invcode_used', 'nua_wl_domain_used', 'nua_user_role_based_approved', 'pw_new_user_approve_has_signed_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'pw_new_user_approve_ignore_notice', 'pw_user_approve_password_reset', 'nua_request_new_role', 'pw_user_status', 'pw_user_status_time', '_mepr_nua_approval', 'nua_invcode_used', 'nua_wl_domain_used', 'nua_user_role_based_approved', 'pw_new_user_approve_has_signed_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'pw_new_user_approve_ignore_notice', 'pw_user_approve_password_reset', 'nua_request_new_role', 'pw_user_status', 'pw_user_status_time', '_mepr_nua_approval', 'nua_invcode_used', 'nua_wl_domain_used', 'nua_user_role_based_approved', 'pw_new_user_approve_has_signed_in');

