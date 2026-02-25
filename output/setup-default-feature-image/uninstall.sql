-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdfi_flake_image_type_enable', 'wdfi_flake_image_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wdfi_addnewrule_posttype', 'wdfi_shop_taxo', 'wdfi_flake_image_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('wdfi_addnewrule_posttype', 'wdfi_shop_taxo', 'wdfi_flake_image_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('wdfi_addnewrule_posttype', 'wdfi_shop_taxo', 'wdfi_flake_image_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wdfi_addnewrule_posttype', 'wdfi_shop_taxo', 'wdfi_flake_image_type');

