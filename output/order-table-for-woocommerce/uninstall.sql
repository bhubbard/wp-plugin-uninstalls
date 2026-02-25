-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otfw_batch_attribute_to_use', 'otfw_unit_attribute_to_use', 'otfw_is_premium', 'otfw_show_attri_in_title', 'otfw_header_config', 'otfw_show_header', 'otfw_table_config', 'otfw_override_shop', 'otfw_override_shop_show_cat', 'Order_Table_Activated_Plugin', 'Activated_Plugin', 'otfw_sale_badge', 'otfw_use_plugin_increment_css', 'otfw_override_all', 'otfw_confirm_input', 'otfw_table_style', 'otfw_table_header_sticky', 'otfw_show_stocklevel', 'otfw_show_images', 'otfw_link_title', 'otfw_show_cat_desc', 'otfw_cats_expand', 'otfw_package_string', 'otfw_checkout_string', 'otfw_set_the_width_manual');

