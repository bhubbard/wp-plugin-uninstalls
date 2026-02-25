-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'minimum_amount', 'expiry_date', 'apply_before_tax', 'free_shipping', 'is_free_product', 'free_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'minimum_amount', 'expiry_date', 'apply_before_tax', 'free_shipping', 'is_free_product', 'free_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'minimum_amount', 'expiry_date', 'apply_before_tax', 'free_shipping', 'is_free_product', 'free_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'minimum_amount', 'expiry_date', 'apply_before_tax', 'free_shipping', 'is_free_product', 'free_product_id');

