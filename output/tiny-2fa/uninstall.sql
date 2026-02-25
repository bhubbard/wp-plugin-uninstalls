-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tiny_2fa_version', 'tiny_2fa_encryption_key', 'tiny_2fa_brute_force_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tiny_2fa_secret_key', 'tiny_2fa_enabled', 'tiny_2fa_email_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('tiny_2fa_secret_key', 'tiny_2fa_enabled', 'tiny_2fa_email_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('tiny_2fa_secret_key', 'tiny_2fa_enabled', 'tiny_2fa_email_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tiny_2fa_secret_key', 'tiny_2fa_enabled', 'tiny_2fa_email_enabled');

