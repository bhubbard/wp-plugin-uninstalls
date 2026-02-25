-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'global_coupons', 'global_coupons_menu');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email');

