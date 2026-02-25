-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'minimum_amount', 'expiry_date', 'individual_use', 'free_shipping', 'exclude_sale_items', 'maximum_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'minimum_amount', 'expiry_date', 'individual_use', 'free_shipping', 'exclude_sale_items', 'maximum_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'minimum_amount', 'expiry_date', 'individual_use', 'free_shipping', 'exclude_sale_items', 'maximum_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit', 'usage_limit_per_user', 'minimum_amount', 'expiry_date', 'individual_use', 'free_shipping', 'exclude_sale_items', 'maximum_amount');

