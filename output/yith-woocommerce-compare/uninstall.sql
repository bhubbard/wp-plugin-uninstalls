-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_woocompare_show_table', 'yith_woocompare_button_text', 'yith_woocompare_show_compare_button_in', 'yith_woocompare_is_button', 'yith_woocompare_version', 'yith_woocompare_image_size', 'yith_woocompare_compare_button_in_product_page', 'yith_woocompare_compare_button_in_products_list', 'yith_woocompare_auto_open', 'yith_woocompare_open_after_second', 'yith_woocompare_excluded_category', 'yith_woocompare_excluded_category_inverse', 'yith_woocompare_include_by_category', 'yith_woocompare_included_categories', 'yith-woocompare-table-image-in-popup', 'yith-woocompare-table-image-in-page', 'yith_woocompare_show_image_table_in', 'yith-woocompare-share-in-popup', 'yith-woocompare-share-in-page', 'yith_woocompare_show_share_in', 'yith-woocompare-related-in-popup', 'yith-woocompare-related-in-page', 'yith_woocompare_show_related_in', 'yith_woocompare_num_product_compared', 'yith_woocompare_should_limit_comparison', 'yith_woocompare_num_fixedcolumns', 'yith_woocompare_has_fixed_columns', 'yith-woocompare-related-autoplay', 'yith-woocompare-related-navigation', 'yith_woocompare_related_slider_options', 'yith_woocompare_fields', 'yith_woocompare_fields_product_info_title', 'yith_woocompare_fields_product_info_image', 'yith_woocompare_fields_product_info_add_cart', 'yith_woocompare_price_end', 'yith_woocompare_add_to_cart_end', 'yith_woocompare_use_full_description', 'woocommerce_weight_unit', 'yith_woocompare_replace_stock_labels_with_icons', 'yith_woocompare_table_text', 'yith_woocompare_table_description', 'yith_woocompare_table_image_format', 'yith_woocompare_button_text_added', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version');
DELETE FROM wp_options WHERE option_name IN ('yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yith_woocompare_layout', 'yith_woocompare_product_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('yith_woocompare_layout', 'yith_woocompare_product_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('yith_woocompare_layout', 'yith_woocompare_product_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yith_woocompare_layout', 'yith_woocompare_product_ids', 'dismissed_wp_pointers', 'blog-cats');

