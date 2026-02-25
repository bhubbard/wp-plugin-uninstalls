-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apmswn_payload', 'apmswn_shop_id', 'apmswn_appid', 'apmswn_register', 'woocommerce_enable_coupons', 'apmswn_plgtyp', 'apmswn_admin_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_embed_landing_url', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_embed_landing_url', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_embed_landing_url', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_embed_landing_url', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email');

