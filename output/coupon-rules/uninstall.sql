-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_coupon_filter_by_product', '_woo_coupon_rule_discount_product', '_woo_coupon_rule_type', '_woo_coupon_filter_by_category', '_woo_coupon_rule_free_qty', '_woo_coupon_rule_quantity', 'discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_coupon_filter_by_product', '_woo_coupon_rule_discount_product', '_woo_coupon_rule_type', '_woo_coupon_filter_by_category', '_woo_coupon_rule_free_qty', '_woo_coupon_rule_quantity', 'discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_coupon_filter_by_product', '_woo_coupon_rule_discount_product', '_woo_coupon_rule_type', '_woo_coupon_filter_by_category', '_woo_coupon_rule_free_qty', '_woo_coupon_rule_quantity', 'discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_coupon_filter_by_product', '_woo_coupon_rule_discount_product', '_woo_coupon_rule_type', '_woo_coupon_filter_by_category', '_woo_coupon_rule_free_qty', '_woo_coupon_rule_quantity', 'discount_type');

