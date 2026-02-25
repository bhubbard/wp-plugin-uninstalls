-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srwc_settings', 'srwc_flush_rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE 'srwc_mailchimp_pending_%';
DELETE FROM wp_options WHERE option_name LIKE 'srwc_mailchimp_confirmation_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('srwc_customer_name', 'srwc_win_label', 'srwc_coupon_code', 'srwc_customer_mobile', 'srwc_spin_date', 'srwc_customer_email', 'date_expires', 'discount_type', 'coupon_amount', 'usage_limit', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'individual_use', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('srwc_customer_name', 'srwc_win_label', 'srwc_coupon_code', 'srwc_customer_mobile', 'srwc_spin_date', 'srwc_customer_email', 'date_expires', 'discount_type', 'coupon_amount', 'usage_limit', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'individual_use', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('srwc_customer_name', 'srwc_win_label', 'srwc_coupon_code', 'srwc_customer_mobile', 'srwc_spin_date', 'srwc_customer_email', 'date_expires', 'discount_type', 'coupon_amount', 'usage_limit', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'individual_use', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('srwc_customer_name', 'srwc_win_label', 'srwc_coupon_code', 'srwc_customer_mobile', 'srwc_spin_date', 'srwc_customer_email', 'date_expires', 'discount_type', 'coupon_amount', 'usage_limit', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'individual_use', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'product_ids', 'exclude_product_ids', 'product_categories', 'exclude_product_categories', 'customer_email');

