-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recapture_custom_recapture_host', 'recapture_custom_loader_url', 'recapture_api_key', 'recapture_authenticator_token', 'recapture_discount_code', 'recapture_woo_include_tax_in_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_recapture_cart_id', '_edd_payment_meta', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'exclude_sale_items', 'usage_count', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'minimum_amount', 'recapture_missing_plugin_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('_recapture_cart_id', '_edd_payment_meta', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'exclude_sale_items', 'usage_count', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'minimum_amount', 'recapture_missing_plugin_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('_recapture_cart_id', '_edd_payment_meta', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'exclude_sale_items', 'usage_count', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'minimum_amount', 'recapture_missing_plugin_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_recapture_cart_id', '_edd_payment_meta', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'exclude_sale_items', 'usage_count', 'limit_usage_to_x_items', 'usage_limit_per_user', 'free_shipping', 'minimum_amount', 'recapture_missing_plugin_nag');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recapture_cart_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recapture_cart_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recapture_cart_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recapture_cart_id_%';

