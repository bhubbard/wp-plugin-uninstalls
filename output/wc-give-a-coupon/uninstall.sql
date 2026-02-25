-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgac_coupon_enabled', 'wgac_order_amount', 'wgac_discount_percentage', 'wgac_expiration_date', 'wgac_coupon_description', 'wgac_subject_email', 'wgac_content_email', 'woocommerce_email_header_image', 'woocommerce_email_footer_text', 'woocommerce_email_base_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'usage_limit', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email', 'expiry_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'usage_limit', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email', 'expiry_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'usage_limit', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email', 'expiry_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'usage_limit', 'coupon_amount', 'usage_limit_per_user', 'individual_use', 'customer_email', 'expiry_date');

