-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickswish_do_activation_redirect', 'woocommerce_cart_redirect_after_add', 'quickswish_installed', 'quickswish_version');

