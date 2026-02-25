-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_basics';
DELETE FROM wp_options WHERE option_name LIKE '%_advanced';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fa_userloginhostory_user_timezone');
DELETE FROM wp_usermeta WHERE meta_key IN ('fa_userloginhostory_user_timezone');
DELETE FROM wp_termmeta WHERE meta_key IN ('fa_userloginhostory_user_timezone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fa_userloginhostory_user_timezone');

