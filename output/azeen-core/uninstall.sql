-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', '_wc_needs_pages', 'woocommerce_single_image_width', 'woocommerce_thumbnail_image_width', 'woocommerce_thumbnail_cropping', 'woocommerce_thumbnail_cropping_custom_width', 'woocommerce_thumbnail_cropping_custom_height', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_container_width', '_wc_activation_redirect', 'kirki_css_write_to_file_failed', 'kirki_googlefonts_cache');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

