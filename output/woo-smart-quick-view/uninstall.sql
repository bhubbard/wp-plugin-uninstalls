-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosq_settings', 'woosq_localization', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins', 'woosq_get_product_meta_keys');
DELETE FROM wp_options WHERE option_name LIKE 'woosq_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcvi_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcvi_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcvi_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcvi_images');

