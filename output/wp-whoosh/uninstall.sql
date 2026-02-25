-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_options', 'jetpack_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mail');

