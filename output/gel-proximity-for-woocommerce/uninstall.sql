-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_returns_manager_front_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_gelproximity_order_cart_id', 'gel_pudo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_gelproximity_order_cart_id', 'gel_pudo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_gelproximity_order_cart_id', 'gel_pudo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_gelproximity_order_cart_id', 'gel_pudo_id');

