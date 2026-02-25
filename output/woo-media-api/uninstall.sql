-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woopos_profile_updated', 'woopos_product_last_set_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('woopos_profile_updated', 'woopos_product_last_set_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('woopos_profile_updated', 'woopos_product_last_set_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woopos_profile_updated', 'woopos_product_last_set_stock');

