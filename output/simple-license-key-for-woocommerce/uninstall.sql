-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slkapi', 'slkwoo', 'slkwoo_passphrase', 'slkwoo_passphrase_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slkwoo_expiry', 'slkwoo_addlicense');
DELETE FROM wp_usermeta WHERE meta_key IN ('slkwoo_expiry', 'slkwoo_addlicense');
DELETE FROM wp_termmeta WHERE meta_key IN ('slkwoo_expiry', 'slkwoo_addlicense');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slkwoo_expiry', 'slkwoo_addlicense');

