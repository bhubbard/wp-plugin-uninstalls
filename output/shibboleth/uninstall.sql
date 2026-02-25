-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shibboleth_attribute_access_method', 'shibboleth_attribute_access_method_fallback', 'shibboleth_attribute_custom_access_method', 'shibboleth_login_url', 'shibboleth_logout_url', 'shibboleth_spoof_key', 'shibboleth_default_to_shib_login', 'shibboleth_auto_login', 'shibboleth_disable_local_auth', 'shibboleth_idps', 'shibboleth_headers', 'shibboleth_create_accounts', 'shibboleth_auto_combine_accounts', 'shibboleth_manually_combine_accounts', 'shibboleth_roles', 'shibboleth_default_role', 'shibboleth_update_roles', 'shibboleth_logging', 'shibboleth_plugin_version', 'shibboleth_update_users', 'shibboleth_plugin_revision', 'shibboleth_attribute_access', 'shibboleth_spoofkey', 'shibboleth_default_login', 'shibboleth_button_text', 'shibboleth_password_change_url', 'shibboleth_password_reset_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shibboleth_account');
DELETE FROM wp_usermeta WHERE meta_key IN ('shibboleth_account');
DELETE FROM wp_termmeta WHERE meta_key IN ('shibboleth_account');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shibboleth_account');

