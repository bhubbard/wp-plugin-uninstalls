-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coupon_series_id', 'product_id', 'coupon_codes', 'usage_limit', 'coupon_amount', 'expiry', 'cblock_count', 'cblock_length', 'coupon_series_id_delete', 'coupon_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'expiry_date', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'minimum_amount', 'maximum_amount', 'customer_email', 'coupon-for-woocommerce_series_id', 'is_voucher');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'expiry_date', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'minimum_amount', 'maximum_amount', 'customer_email', 'coupon-for-woocommerce_series_id', 'is_voucher');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'expiry_date', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'minimum_amount', 'maximum_amount', 'customer_email', 'coupon-for-woocommerce_series_id', 'is_voucher');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'expiry_date', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'minimum_amount', 'maximum_amount', 'customer_email', 'coupon-for-woocommerce_series_id', 'is_voucher');

