-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nibble_api_url', 'nibble_api_key', 'nibble_secret_key', 'nibble_on_product_page', 'nibble_on_cart_page', 'nibble_cart_product', 'nibble_enable', 'nibble_manual', 'nibble_custom_css', 'nibble_discount_type', 'nibble_cross_sell_id', 'nibble-activation-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nibble_cart_id', 'nibble_data_processed', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'nibble_product_id', 'nibble_subproduct_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('nibble_cart_id', 'nibble_data_processed', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'nibble_product_id', 'nibble_subproduct_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('nibble_cart_id', 'nibble_data_processed', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'nibble_product_id', 'nibble_subproduct_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nibble_cart_id', 'nibble_data_processed', 'discount_type', 'coupon_amount', 'individual_use', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'nibble_product_id', 'nibble_subproduct_id');

