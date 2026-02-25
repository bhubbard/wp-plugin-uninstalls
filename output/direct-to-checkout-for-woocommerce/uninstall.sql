-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_tab_direct_to_checkout_single_product_page_button_text', 'wc_settings_tab_direct_to_checkout_simple_shop_page_button_text', 'wc_settings_tab_direct_to_checkout_add_cart_to_checkout');

