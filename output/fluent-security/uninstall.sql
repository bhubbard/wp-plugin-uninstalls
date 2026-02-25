-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__fluent_security_db_version', '__fls_auth_settings', '__fls_social_auth_settings', '__fls_auth_forms_settings', '__fls_auth_customizer_settings', '_fls_last_digest_sent', 'fls_last_blocked_email_send_time', '__fls_child_sites', 'fa_system_email_settings', '__fls_integrity_settings', '__fls_integrity_ignore_lists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fls_login_google', '__flsc_temp_token', '_fls_login_github', '_fls_login_facebook', 'default_password_nag', 'locale', '_new_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fls_login_google', '__flsc_temp_token', '_fls_login_github', '_fls_login_facebook', 'default_password_nag', 'locale', '_new_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fls_login_google', '__flsc_temp_token', '_fls_login_github', '_fls_login_facebook', 'default_password_nag', 'locale', '_new_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fls_login_google', '__flsc_temp_token', '_fls_login_github', '_fls_login_facebook', 'default_password_nag', 'locale', '_new_email');

