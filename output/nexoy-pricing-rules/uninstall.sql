-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nexoy_is_active', '_nexoy_discount_amount', '_nexoy_apply_all', '_nexoy_inc_cats', '_nexoy_inc_prods', '_nexoy_exc_cats', '_nexoy_exc_prods');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nexoy_is_active', '_nexoy_discount_amount', '_nexoy_apply_all', '_nexoy_inc_cats', '_nexoy_inc_prods', '_nexoy_exc_cats', '_nexoy_exc_prods');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nexoy_is_active', '_nexoy_discount_amount', '_nexoy_apply_all', '_nexoy_inc_cats', '_nexoy_inc_prods', '_nexoy_exc_cats', '_nexoy_exc_prods');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nexoy_is_active', '_nexoy_discount_amount', '_nexoy_apply_all', '_nexoy_inc_cats', '_nexoy_inc_prods', '_nexoy_exc_cats', '_nexoy_exc_prods');

