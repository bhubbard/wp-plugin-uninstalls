-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosl_settings', 'woosl_localization', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woosl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woosl_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('woosl_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('woosl_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woosl_products');

