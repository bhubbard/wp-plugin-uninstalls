-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_dismissed_notices', 'gens_raf_disable', 'gens_raf_email_message', 'gens_raf_email_subject', 'gens_raf_coupon_amount', 'gens_raf_coupon_duration', 'gens_raf_individual_use', 'gens_raf_coupon_type', 'gens_raf_min_order', 'gens_raf_cookie_remove', 'gens_raf_cookie_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_raf_id', 'gens_referral_id', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'customer_email', 'usage_count', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'minimum_amount', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_raf_id', 'gens_referral_id', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'customer_email', 'usage_count', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'minimum_amount', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_raf_id', 'gens_referral_id', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'customer_email', 'usage_count', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'minimum_amount', 'apply_before_tax', 'free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_raf_id', 'gens_referral_id', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'customer_email', 'usage_count', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'minimum_amount', 'apply_before_tax', 'free_shipping');

