-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thz:builder:tpl:last:update', 'thz_fontsquirrel_fonts', 'thz_fontsquirrel_classifications', 'thz_imported_fonts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thz_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thz_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thz_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thz_image_id');

