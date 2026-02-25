-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpp_postAuthor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guest-name', 'guest-email', 'guest-gender', 'guest-commadd', 'guest-padd', 'guest-phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('guest-name', 'guest-email', 'guest-gender', 'guest-commadd', 'guest-padd', 'guest-phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('guest-name', 'guest-email', 'guest-gender', 'guest-commadd', 'guest-padd', 'guest-phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guest-name', 'guest-email', 'guest-gender', 'guest-commadd', 'guest-padd', 'guest-phone');

