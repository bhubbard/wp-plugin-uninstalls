-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdfi_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdfi_firstname', 'pdfi_lastname', 'pdfi_email', 'pdfi_occupation', 'pdfi_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdfi_firstname', 'pdfi_lastname', 'pdfi_email', 'pdfi_occupation', 'pdfi_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdfi_firstname', 'pdfi_lastname', 'pdfi_email', 'pdfi_occupation', 'pdfi_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdfi_firstname', 'pdfi_lastname', 'pdfi_email', 'pdfi_occupation', 'pdfi_description');

