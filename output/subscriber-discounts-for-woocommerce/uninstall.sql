-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdwoo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'customer_email', 'usage_limit', 'exclude_sale_items', 'date_expires', 'apply_before_tax', 'free_shipping', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'customer_email', 'usage_limit', 'exclude_sale_items', 'date_expires', 'apply_before_tax', 'free_shipping', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'customer_email', 'usage_limit', 'exclude_sale_items', 'date_expires', 'apply_before_tax', 'free_shipping', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'customer_email', 'usage_limit', 'exclude_sale_items', 'date_expires', 'apply_before_tax', 'free_shipping', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories');

