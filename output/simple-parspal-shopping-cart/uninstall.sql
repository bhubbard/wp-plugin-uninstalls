-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_cart_title', 'wp_cart_empty_text', 'cart_return_from_parspal_url', 'cart_products_page_url', 'wp_use_aff_platform', 'cart_parspal_id', 'parspal_password', 'wp_shopping_cart_image_hide', 'cart_base_shipping_cost', 'cart_free_shipping_threshold', 'addToCartButtonName', 'cart_payment_currency', 'cart_currency_symbol', 'wp_shopping_cart_collect_address', 'wp_shopping_cart_use_profile_shipping');

