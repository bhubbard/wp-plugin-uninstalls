-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_decimal_sep', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wyse_me_gift_card', 'coupon_amount', 'coupon_used', '_cart_discount', '_cart_discount_tax');
DELETE FROM wp_usermeta WHERE meta_key IN ('wyse_me_gift_card', 'coupon_amount', 'coupon_used', '_cart_discount', '_cart_discount_tax');
DELETE FROM wp_termmeta WHERE meta_key IN ('wyse_me_gift_card', 'coupon_amount', 'coupon_used', '_cart_discount', '_cart_discount_tax');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wyse_me_gift_card', 'coupon_amount', 'coupon_used', '_cart_discount', '_cart_discount_tax');

