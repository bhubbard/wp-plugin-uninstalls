-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_coupon_free_shipping_options');
DELETE FROM wp_options WHERE option_name LIKE 'woo_coupon_free_shipping_discount_text_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('free_shipping');

