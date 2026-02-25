-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edd_user_public_key', 'edd_user_secret_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('edd_user_public_key', 'edd_user_secret_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('edd_user_public_key', 'edd_user_secret_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edd_user_public_key', 'edd_user_secret_key');

