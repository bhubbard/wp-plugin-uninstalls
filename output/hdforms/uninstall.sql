-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hdf_form_style', 'hdf_flood');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_data', 'form_blocks');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_data', 'form_blocks');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_data', 'form_blocks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_data', 'form_blocks');

