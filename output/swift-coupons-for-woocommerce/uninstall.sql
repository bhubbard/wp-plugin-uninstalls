-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swiftcoupons_auto_apply_coupons', 'swift_coupons_activate_time', 'swift_coupons_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swiftcoupons_add_products', 'swiftcoupons_bxgx', 'swiftcoupons_url_apply_override_code', 'swiftcoupons_scheduler', 'swiftcoupons_qualifiers', 'swiftcoupons_url_apply', 'swiftcoupons_auto_apply', 'swiftcoupons_shipping_discounts');
DELETE FROM wp_usermeta WHERE meta_key IN ('swiftcoupons_add_products', 'swiftcoupons_bxgx', 'swiftcoupons_url_apply_override_code', 'swiftcoupons_scheduler', 'swiftcoupons_qualifiers', 'swiftcoupons_url_apply', 'swiftcoupons_auto_apply', 'swiftcoupons_shipping_discounts');
DELETE FROM wp_termmeta WHERE meta_key IN ('swiftcoupons_add_products', 'swiftcoupons_bxgx', 'swiftcoupons_url_apply_override_code', 'swiftcoupons_scheduler', 'swiftcoupons_qualifiers', 'swiftcoupons_url_apply', 'swiftcoupons_auto_apply', 'swiftcoupons_shipping_discounts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swiftcoupons_add_products', 'swiftcoupons_bxgx', 'swiftcoupons_url_apply_override_code', 'swiftcoupons_scheduler', 'swiftcoupons_qualifiers', 'swiftcoupons_url_apply', 'swiftcoupons_auto_apply', 'swiftcoupons_shipping_discounts');

