-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bluetape_settings', 'btpg_min_order_total', 'btpg_allowed_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_saved_cart_content', '_bluetape_link_order_field', '_saved_woocommerce_customer_id', '_old_order_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_saved_cart_content', '_bluetape_link_order_field', '_saved_woocommerce_customer_id', '_old_order_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_saved_cart_content', '_bluetape_link_order_field', '_saved_woocommerce_customer_id', '_old_order_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_saved_cart_content', '_bluetape_link_order_field', '_saved_woocommerce_customer_id', '_old_order_data');

