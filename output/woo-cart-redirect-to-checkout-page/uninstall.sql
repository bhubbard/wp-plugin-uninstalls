-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_cart_redirect_to_page', 'woocommerce_checkout_page_id', 'woo_cart_redirect_default', 'woocommerce_cart_redirect_after_add', 'gwp_com_live_feed');

