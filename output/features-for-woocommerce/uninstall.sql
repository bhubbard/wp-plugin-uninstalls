-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_registration_generate_username', 'ffw_exclude_product_from_coupon_code_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ffw_coupon_excluded', '_ffw_hide_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('ffw_coupon_excluded', '_ffw_hide_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('ffw_coupon_excluded', '_ffw_hide_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ffw_coupon_excluded', '_ffw_hide_coupon');

