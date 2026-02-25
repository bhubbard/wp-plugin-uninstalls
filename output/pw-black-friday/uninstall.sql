-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_coupons', 'woocommerce_price_num_decimals', 'woocommerce_prices_include_tax', 'direct_checkout_enabled', 'direct_checkout_cart_redirect_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('begin_datetime', 'end_datetime', 'upcoming_countdown', 'upcoming_offset', 'ending_countdown', 'product_categories_included', 'include_product_ids', 'exclude_product_ids', 'deal_type', 'use_regular_price', 'bogo_identical_products', 'bogo_identical_variations', 'free_shipping', 'free_shipping_min_amount', 'order_limit', 'coupon_code', 'individual_use', 'individual_use_message', 'show_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('begin_datetime', 'end_datetime', 'upcoming_countdown', 'upcoming_offset', 'ending_countdown', 'product_categories_included', 'include_product_ids', 'exclude_product_ids', 'deal_type', 'use_regular_price', 'bogo_identical_products', 'bogo_identical_variations', 'free_shipping', 'free_shipping_min_amount', 'order_limit', 'coupon_code', 'individual_use', 'individual_use_message', 'show_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('begin_datetime', 'end_datetime', 'upcoming_countdown', 'upcoming_offset', 'ending_countdown', 'product_categories_included', 'include_product_ids', 'exclude_product_ids', 'deal_type', 'use_regular_price', 'bogo_identical_products', 'bogo_identical_variations', 'free_shipping', 'free_shipping_min_amount', 'order_limit', 'coupon_code', 'individual_use', 'individual_use_message', 'show_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('begin_datetime', 'end_datetime', 'upcoming_countdown', 'upcoming_offset', 'ending_countdown', 'product_categories_included', 'include_product_ids', 'exclude_product_ids', 'deal_type', 'use_regular_price', 'bogo_identical_products', 'bogo_identical_variations', 'free_shipping', 'free_shipping_min_amount', 'order_limit', 'coupon_code', 'individual_use', 'individual_use_message', 'show_expiration');

