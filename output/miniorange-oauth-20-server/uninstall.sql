-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_oauth_server_client', 'mo_oauth_server_registration_status', 'mo_oauth_admin_email', 'mo_oauth_server_admin_api_key', 'mo_oauth_server_new_registration', 'password_mismatch', 'mo_oauth_server_master_switch', 'mo_oauth_server_enable_oidc', 'mo_oauth_server_enforce_state', 'mo_oauth_server_custom_login_url', 'mo_oauth_server_is_debug_enabled', 'message', 'mo_oauth_server_admin_phone', 'host_name', 'mo_oauth_server_hide_security_warning_admin', 'mo_oauth_server_is_client_secret_encrypted', 'mo_oauth_admin_fname', 'mo_oauth_admin_lname', 'mo_oauth_admin_company', 'mo_oauth_server_admin_customer_key', 'mo_oauth_server_customer_token', 'mo_oauth_server_verify_customer', 'mo_oauth_server_new_customer', 'mo_oauth_show_mo_server_message', 'mo_oauth_server_jwks_uri_hit_count', 'mo_oauth_server_is_security_warning_mail_sent', 'mo_oauth_expiry_time', 'mo_oauth_refresh_expiry_time', 'mo_oauth_server_security_warning_remind_date', 'mo_oauth_server_current_id_token', 'mo_oauth_server_token_length');
DELETE FROM wp_options WHERE option_name LIKE 'mo_oauth_server_jwt_signing_algo_for_%';
DELETE FROM wp_options WHERE option_name LIKE 'mo_oauth_server_enable_jwt_support_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mo_oauth_server_granted_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mo_oauth_server_granted_%';

