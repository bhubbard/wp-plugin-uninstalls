-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'us2fa_redirect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('us2fa_temp_secret', 'us2fa_secret', 'us2fa_enabled', 'us2fa_backup_codes');
DELETE FROM wp_usermeta WHERE meta_key IN ('us2fa_temp_secret', 'us2fa_secret', 'us2fa_enabled', 'us2fa_backup_codes');
DELETE FROM wp_termmeta WHERE meta_key IN ('us2fa_temp_secret', 'us2fa_secret', 'us2fa_enabled', 'us2fa_backup_codes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('us2fa_temp_secret', 'us2fa_secret', 'us2fa_enabled', 'us2fa_backup_codes');

