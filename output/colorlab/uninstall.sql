-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_colorlab_shop_id', 'woocommerce_colorlab_api_key', 'woocommerce_colorlab_secret_key', 'woocommerce_colorlab_customization_text', 'woocommerce_colorlab_add_to_cart_button', 'woocommerce_printlane_button_selector', 'woocommerce_colorlab_cart_thumbnails', 'woocommerce_colorlab_hide_reference');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enable_colorlab', '_colorlab_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enable_colorlab', '_colorlab_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enable_colorlab', '_colorlab_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enable_colorlab', '_colorlab_product');

