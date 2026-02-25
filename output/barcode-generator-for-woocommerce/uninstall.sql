-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbarginerator_print_option', 'pbrshortcodesettings', 'pbr_downlaod_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pbg_meta_barcode', '_alg_ean', 'bargeno_meta_barcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('pbg_meta_barcode', '_alg_ean', 'bargeno_meta_barcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('pbg_meta_barcode', '_alg_ean', 'bargeno_meta_barcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pbg_meta_barcode', '_alg_ean', 'bargeno_meta_barcode');

