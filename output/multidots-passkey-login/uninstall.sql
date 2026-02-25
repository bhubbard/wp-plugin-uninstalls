-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdlogin_passkey_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mdlogin_passkey_created_user', 'mdlogin_passkey_created_date', 'mdlogin_passkey_user_handle', 'mdlogin_passkey_credentials');
DELETE FROM wp_usermeta WHERE meta_key IN ('mdlogin_passkey_created_user', 'mdlogin_passkey_created_date', 'mdlogin_passkey_user_handle', 'mdlogin_passkey_credentials');
DELETE FROM wp_termmeta WHERE meta_key IN ('mdlogin_passkey_created_user', 'mdlogin_passkey_created_date', 'mdlogin_passkey_user_handle', 'mdlogin_passkey_credentials');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mdlogin_passkey_created_user', 'mdlogin_passkey_created_date', 'mdlogin_passkey_user_handle', 'mdlogin_passkey_credentials');

