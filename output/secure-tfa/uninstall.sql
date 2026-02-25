-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secure_tfa_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('secure_tfa_temporary_totp_secret', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('secure_tfa_temporary_totp_secret', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('secure_tfa_temporary_totp_secret', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('secure_tfa_temporary_totp_secret', 'first_name', 'last_name');

