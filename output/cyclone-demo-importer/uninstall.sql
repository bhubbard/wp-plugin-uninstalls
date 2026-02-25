-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_page_title_selector', 'elementor_active_kit', 'yith_woocompare_fields_attrs', 'yith_woocompare_is_button', 'yith_woocompare_button_text', 'yith_woocompare_compare_button_in_product_page', 'yith_woocompare_compare_button_in_products_list', 'yith_woocompare_auto_open', 'yith_woocompare_table_text', 'yith_woocompare_price_end', 'yith_woocompare_add_to_cart_end', 'yith_woocompare_image_size', 'cyclone_plugin_activate_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

