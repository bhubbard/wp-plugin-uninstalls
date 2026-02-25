-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('incert_coupons', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_incert_coupon_used', '_incert_has_incert_product', '_is_incert', '_partly_redeemable', '_incert_order_id', '_incert_coupon_articles', '_incert_order_error', '_incert_coupon_articles_data_set');
DELETE FROM wp_usermeta WHERE meta_key IN ('_incert_coupon_used', '_incert_has_incert_product', '_is_incert', '_partly_redeemable', '_incert_order_id', '_incert_coupon_articles', '_incert_order_error', '_incert_coupon_articles_data_set');
DELETE FROM wp_termmeta WHERE meta_key IN ('_incert_coupon_used', '_incert_has_incert_product', '_is_incert', '_partly_redeemable', '_incert_order_id', '_incert_coupon_articles', '_incert_order_error', '_incert_coupon_articles_data_set');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_incert_coupon_used', '_incert_has_incert_product', '_is_incert', '_partly_redeemable', '_incert_order_id', '_incert_coupon_articles', '_incert_order_error', '_incert_coupon_articles_data_set');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_redemption_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_redemption_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_redemption_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_redemption_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_redeemed_amount';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_redeemed_amount';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_redeemed_amount';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_redeemed_amount';

