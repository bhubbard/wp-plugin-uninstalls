-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('berocket_dynamic_pricing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('minimum_amount', 'coupon_amount', 'discount_type', 'product one', 'product two', 'count_product_one', 'count_product_two', 'value_discount', 'type_discount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'customer_email', 'unique');
DELETE FROM wp_usermeta WHERE meta_key IN ('minimum_amount', 'coupon_amount', 'discount_type', 'product one', 'product two', 'count_product_one', 'count_product_two', 'value_discount', 'type_discount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'customer_email', 'unique');
DELETE FROM wp_termmeta WHERE meta_key IN ('minimum_amount', 'coupon_amount', 'discount_type', 'product one', 'product two', 'count_product_one', 'count_product_two', 'value_discount', 'type_discount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'customer_email', 'unique');
DELETE FROM wp_commentmeta WHERE meta_key IN ('minimum_amount', 'coupon_amount', 'discount_type', 'product one', 'product two', 'count_product_one', 'count_product_two', 'value_discount', 'type_discount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'exclude_sale_items', 'product_categories', 'exclude_product_categories', 'customer_email', 'unique');

