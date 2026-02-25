-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('extra_product_data_max_order_status', 'exprdawc_custom_add_to_cart_text', 'woocommerce_currency_pos', 'exprdawc_show_in_cart', 'exprdawc_show_in_checkout', 'exprdawc_show_empty_fields', 'active_sitewide_plugins');

