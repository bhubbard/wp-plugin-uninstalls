-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_aff_2nd_tier_commission_level', 'wp_aff_use_fixed_commission');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aff_woo_product_specific_commission');
DELETE FROM wp_usermeta WHERE meta_key IN ('aff_woo_product_specific_commission');
DELETE FROM wp_termmeta WHERE meta_key IN ('aff_woo_product_specific_commission');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aff_woo_product_specific_commission');

