-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_placeholder_image', 'active_sitewide_plugins', 'woo_variation_swatches');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', 'show_tooltip', 'tooltip_text', 'tooltip_image_id', '_wc_attachment_source', 'is_dual_color', 'secondary_color', 'group_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', 'show_tooltip', 'tooltip_text', 'tooltip_image_id', '_wc_attachment_source', 'is_dual_color', 'secondary_color', 'group_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', 'show_tooltip', 'tooltip_text', 'tooltip_image_id', '_wc_attachment_source', 'is_dual_color', 'secondary_color', 'group_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', 'show_tooltip', 'tooltip_text', 'tooltip_image_id', '_wc_attachment_source', 'is_dual_color', 'secondary_color', 'group_name');

