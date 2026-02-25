-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooaa_settings', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wooaa_%';

