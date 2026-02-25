-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inpost_paczkomaty_options', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id');

