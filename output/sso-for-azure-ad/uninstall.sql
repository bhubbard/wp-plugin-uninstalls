-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sso_for_azure_ad_client_id', 'sso_for_azure_ad_client_secret', 'sso_for_azure_ad_tenant_id', 'sso_for_azure_ad_require_post_start', 'sso_for_azure_ad_use_post_callback', 'sso_for_azure_ad_create_users', 'sso_for_azure_ad_new_usernames_no_domain', 'sso_for_azure_ad_populate_new_profiles', 'sso_for_azure_ad_role_new_profile', 'sso_for_azure_ad_login_button_hide', 'sso_for_azure_ad_login_button_text', 'sso_for_azure_ad_enable_rewrites', 'sso_for_azure_ad_scope');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag');

