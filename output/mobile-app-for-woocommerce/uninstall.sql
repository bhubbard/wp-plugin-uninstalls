-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_preorders_cart_product_text', 'default_product_cat', 'woocommerce_currency', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_hide_out_of_stock_items', 'woocommerce_stock_format', 'woocommerce_notify_low_stock_amount', 'reward_single_page_product', 'reward_cart_product_meta', 'reward_checkout_product_meta', 'reward_points_global', 'mycred_point_type', 'reward_points_global_type', 'reward_points_exchange_rate', 'reward_points_global_message', 'reward_points_global_type_val', 'reward_cart_product_total', 'reward_checkout_product_total', 'woocommerce_prices_include_tax', 'ywpar_points_round_type', 'shopapper_app_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'registered_by_shopapper', '_pre_order_date', 'shopapper_only_app', 'shopapper_hide_web', 'shopapper_hide', 'shopapper_wc_notices', 'cwginstock_product_id', 'cwginstock_user_id', 'cwginstock_subscriber_name', '_customer_user', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'registered_by_shopapper', '_pre_order_date', 'shopapper_only_app', 'shopapper_hide_web', 'shopapper_hide', 'shopapper_wc_notices', 'cwginstock_product_id', 'cwginstock_user_id', 'cwginstock_subscriber_name', '_customer_user', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'registered_by_shopapper', '_pre_order_date', 'shopapper_only_app', 'shopapper_hide_web', 'shopapper_hide', 'shopapper_wc_notices', 'cwginstock_product_id', 'cwginstock_user_id', 'cwginstock_subscriber_name', '_customer_user', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'registered_by_shopapper', '_pre_order_date', 'shopapper_only_app', 'shopapper_hide_web', 'shopapper_hide', 'shopapper_wc_notices', 'cwginstock_product_id', 'cwginstock_user_id', 'cwginstock_subscriber_name', '_customer_user', '_payment_method');

