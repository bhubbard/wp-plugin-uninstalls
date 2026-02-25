-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'woocommerce_api_enabled', 'woocommerce_prices_include_tax', 'woocommerce_manage_stock', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_force_ssl_checkout', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_registration_generate_password', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note', 'rating', '_wp_attachment_image_alt', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'date_expires', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email', '_payment_method', '_payment_method_title', '_order_currency', '_customer_user', '_refund_amount', 'display_type', 'thumbnail_id', '_is_vat_exempt');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note', 'rating', '_wp_attachment_image_alt', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'date_expires', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email', '_payment_method', '_payment_method_title', '_order_currency', '_customer_user', '_refund_amount', 'display_type', 'thumbnail_id', '_is_vat_exempt');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note', 'rating', '_wp_attachment_image_alt', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'date_expires', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email', '_payment_method', '_payment_method_title', '_order_currency', '_customer_user', '_refund_amount', 'display_type', 'thumbnail_id', '_is_vat_exempt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note', 'rating', '_wp_attachment_image_alt', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'usage_limit_per_user', 'limit_usage_to_x_items', 'usage_count', 'expiry_date', 'date_expires', 'free_shipping', 'product_categories', 'exclude_product_categories', 'exclude_sale_items', 'minimum_amount', 'maximum_amount', 'customer_email', '_payment_method', '_payment_method_title', '_order_currency', '_customer_user', '_refund_amount', 'display_type', 'thumbnail_id', '_is_vat_exempt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';

