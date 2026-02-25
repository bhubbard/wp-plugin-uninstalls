-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isa_woocommerce_max_qty_limit', 'direct_checkout_enabled', 'direct_checkout_cart_redirect_url');

