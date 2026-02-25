-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a3rev_woocp_lite_version', 'a3rev_woocp_pro_version', 'product_compare_id', 'a3rev_woocp_just_installed', 'a3rev_woocp_install_default_data_start', 'woocommerce_db_version', 'woo_compare_grid_view_settings', 'woo_compare_product_page_settings', 'wc_compare_product_style_version', 'sidebars_widgets', 'woo_comparable_settings', 'woo_compare_comparison_page_global_settings', 'woo_compare_product_page_button_style', 'woo_compare_product_page_tab', 'a3rev_woocp_lite_is_updating_2_1_8', 'woo_compare_product_page_view_compare_style', 'woo_compare_widget_style', 'woo_compare_widget_title_style', 'woo_compare_widget_button_style', 'woo_compare_widget_clear_all_style', 'woo_compare_widget_thumbnail_style', 'woo_compare_grid_view_button_style', 'woo_compare_gridview_view_compare_style', 'woo_compare_page_style', 'woo_compare_table_style', 'woo_compare_table_content_style', 'woo_compare_product_prices_style', 'woo_compare_addtocart_style', 'woo_compare_viewcart_style', 'woo_compare_print_message_style', 'woo_compare_print_button_style', 'woo_compare_print_page_settings', 'woo_compare_close_window_button_style', 'a3rev_woocp_lite_is_updating_2_1_9_3', 'woo_compare_product_success_icon', 'woo_compare_logo', 'woocommerce_cart_redirect_after_add', 'woo_compare_addtocart_success', 'woo_compare_gridview_product_success_icon', 'woo_compare_basket_icon', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_compare_category', '_product_attributes', '_woo_deactivate_compare_feature', '_woo_price', '_woo_special_price', '_woo_compare_category_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_compare_category', '_product_attributes', '_woo_deactivate_compare_feature', '_woo_price', '_woo_special_price', '_woo_compare_category_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_compare_category', '_product_attributes', '_woo_deactivate_compare_feature', '_woo_price', '_woo_special_price', '_woo_compare_category_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_compare_category', '_product_attributes', '_woo_deactivate_compare_feature', '_woo_price', '_woo_special_price', '_woo_compare_category_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_compare_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_compare_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_compare_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_compare_%';

