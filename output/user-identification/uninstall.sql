-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('i12n_upload_path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('i12n_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('i12n_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('i12n_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('i12n_file');

