-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'postapanduri_setari_generale', 'postapanduri_setari_pachetomat', 'postapanduri_setari_puncte_ridicare', 'postapanduri_setari_curierat', 'jal_db_version', 'woocommerce_calc_taxes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('id_pachetomat');
DELETE FROM wp_usermeta WHERE meta_key IN ('id_pachetomat');
DELETE FROM wp_termmeta WHERE meta_key IN ('id_pachetomat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('id_pachetomat');

