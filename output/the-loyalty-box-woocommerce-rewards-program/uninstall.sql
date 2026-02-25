-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('special_query_results');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping');

