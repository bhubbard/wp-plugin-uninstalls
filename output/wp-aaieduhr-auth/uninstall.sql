-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('illegal_names', 'limited_email_domains', 'wp_aaieduhr_auth_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aaieduhr_account');
DELETE FROM wp_usermeta WHERE meta_key IN ('aaieduhr_account');
DELETE FROM wp_termmeta WHERE meta_key IN ('aaieduhr_account');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aaieduhr_account');

