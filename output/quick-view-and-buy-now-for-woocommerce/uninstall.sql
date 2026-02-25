-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE '%-activation-notice';

