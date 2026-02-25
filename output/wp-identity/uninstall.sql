-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('identity_login_enabled', 'identity_key_file', 'identity_cert_file', 'identity_editing_disabled', 'identity_key_password', 'identity_ca_file', 'identity_telemetry_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable_forget_password');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable_forget_password');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable_forget_password');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable_forget_password');

