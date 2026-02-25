-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rm_db_version', 'woocommerce_currency', 'woocommerce_version', 'woocommerce_webhook_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'expiry_date', 'date_expires', 'apply_before_tax', 'free_shipping', 'minimum_amount', 'individual_use', 'exclude_sale_items', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email', '_webhook_pending_delivery', 'marketing_allowed');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'expiry_date', 'date_expires', 'apply_before_tax', 'free_shipping', 'minimum_amount', 'individual_use', 'exclude_sale_items', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email', '_webhook_pending_delivery', 'marketing_allowed');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'expiry_date', 'date_expires', 'apply_before_tax', 'free_shipping', 'minimum_amount', 'individual_use', 'exclude_sale_items', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email', '_webhook_pending_delivery', 'marketing_allowed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'expiry_date', 'date_expires', 'apply_before_tax', 'free_shipping', 'minimum_amount', 'individual_use', 'exclude_sale_items', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email', '_webhook_pending_delivery', 'marketing_allowed');

