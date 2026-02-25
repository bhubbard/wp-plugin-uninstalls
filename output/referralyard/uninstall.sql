-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('referralyard_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'customer_email', 'minimum_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'customer_email', 'minimum_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'customer_email', 'minimum_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'customer_email', 'minimum_amount');

