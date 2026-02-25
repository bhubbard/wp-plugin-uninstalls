-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optinguru_owner_id', 'conv_owner_id', 'conv_site_id', 'optinguru_site_id', 'optinguru_website_id', 'conv_token', 'optinguru_token', 'convertful_owner_id', 'convertful_site_id', 'convertful_token', 'conv_ref', 'conv-ref');
DELETE FROM wp_options WHERE option_name LIKE 'optinguru_%';
DELETE FROM wp_options WHERE option_name LIKE 'convertful_%';
DELETE FROM wp_options WHERE option_name LIKE 'conv_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'exclude_sale_items', 'usage_limit', 'expiry_date', 'free_shipping', 'customer_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'exclude_sale_items', 'usage_limit', 'expiry_date', 'free_shipping', 'customer_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'exclude_sale_items', 'usage_limit', 'expiry_date', 'free_shipping', 'customer_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'exclude_sale_items', 'usage_limit', 'expiry_date', 'free_shipping', 'customer_email');

