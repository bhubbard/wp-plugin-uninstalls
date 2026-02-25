-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_coupons', 'woocommerce_tax_display_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('advanced_coupon_for_woocommerce_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('advanced_coupon_for_woocommerce_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('advanced_coupon_for_woocommerce_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('advanced_coupon_for_woocommerce_settings');

