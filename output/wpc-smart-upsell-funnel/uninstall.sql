-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcuf_settings', 'wpcuf_uf', 'wpcuf_ob', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcuf_%';

