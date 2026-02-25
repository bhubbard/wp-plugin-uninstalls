-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_product_open_pricing_enabled', 'woocommerce_version', 'alg_wc_product_open_pricing_disable_qty', 'alg_wc_product_open_pricing_field_position', 'alg_wc_product_open_pricing_field_position_priority', 'alg_wc_product_open_pricing_field_on_loop', 'alg_wc_product_open_pricing_field_loop_position', 'alg_wc_product_open_pricing_field_loop_position_priority', 'alg_wc_product_open_pricing_fix_mini_cart', 'alg_wc_product_open_pricing_add_admin_column', 'alg_wc_product_open_pricing_force_decimal_width_enabled', 'alg_wc_product_open_pricing_force_decimal_width', 'woocommerce_price_num_decimals', 'woocommerce_currency', 'wpw_pop_add_to_cart_text', 'alg_wc_product_open_pricing_hide_price', 'alg_wc_product_open_pricing_loop_hide_price', 'alg_wc_product_open_pricing_messages_required', 'alg_wc_product_open_pricing_messages_too_small', 'alg_wc_product_open_pricing_messages_too_big', 'alg_wc_product_open_pricing_price_step', 'alg_wc_product_open_pricing_input_style', 'alg_wc_product_open_pricing_input_pattern', 'alg_wc_product_open_pricing_frontend_template', 'alg_wc_product_open_pricing_frontend_loop_template', 'alg_wc_product_open_pricing_label_frontend', 'alg_wc_product_open_pricing_enable_step', 'active_sitewide_plugins', 'alg_wc_product_open_pricing_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

