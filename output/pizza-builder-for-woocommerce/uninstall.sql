-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'pizza_settings_data', 'pizza_components_data', 'pizza_shortcodes_data', 'woocommerce_currency_pos');
DELETE FROM wp_options WHERE option_name LIKE 'pizza_shortcodes_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_ev_pizza_full', '_ev_pizza', 'ev_pizza_price_inc', 'product_ev_components_data', 'product_ev_components');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_ev_pizza_full', '_ev_pizza', 'ev_pizza_price_inc', 'product_ev_components_data', 'product_ev_components');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_ev_pizza_full', '_ev_pizza', 'ev_pizza_price_inc', 'product_ev_components_data', 'product_ev_components');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_ev_pizza_full', '_ev_pizza', 'ev_pizza_price_inc', 'product_ev_components_data', 'product_ev_components');

