#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp option delete 'a3rev_woocp_lite_version'
wp option delete 'a3rev_woocp_pro_version'
wp option delete 'product_compare_id'
wp option delete 'a3rev_woocp_just_installed'
wp option delete 'a3rev_woocp_install_default_data_start'
wp option delete 'woocommerce_db_version'
wp option delete 'woo_compare_grid_view_settings'
wp option delete 'woo_compare_product_page_settings'
wp option delete 'wc_compare_product_style_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'woo_comparable_settings'
wp option delete 'woo_compare_comparison_page_global_settings'
wp option delete 'woo_compare_product_page_button_style'
wp option delete 'woo_compare_product_page_tab'
wp option delete 'a3rev_woocp_lite_is_updating_2_1_8'
wp option delete 'woo_compare_product_page_view_compare_style'
wp option delete 'woo_compare_widget_style'
wp option delete 'woo_compare_widget_title_style'
wp option delete 'woo_compare_widget_button_style'
wp option delete 'woo_compare_widget_clear_all_style'
wp option delete 'woo_compare_widget_thumbnail_style'
wp option delete 'woo_compare_grid_view_button_style'
wp option delete 'woo_compare_gridview_view_compare_style'
wp option delete 'woo_compare_page_style'
wp option delete 'woo_compare_table_style'
wp option delete 'woo_compare_table_content_style'
wp option delete 'woo_compare_product_prices_style'
wp option delete 'woo_compare_addtocart_style'
wp option delete 'woo_compare_viewcart_style'
wp option delete 'woo_compare_print_message_style'
wp option delete 'woo_compare_print_button_style'
wp option delete 'woo_compare_print_page_settings'
wp option delete 'woo_compare_close_window_button_style'
wp option delete 'a3rev_woocp_lite_is_updating_2_1_9_3'
wp option delete 'woo_compare_product_success_icon'
wp option delete 'woo_compare_logo'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'woo_compare_addtocart_success'
wp option delete 'woo_compare_gridview_product_success_icon'
wp option delete 'woo_compare_basket_icon'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_compare_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_compare_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_compare_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_compare_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_compare_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_compare_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_compare_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_compare_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_deactivate_compare_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_deactivate_compare_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_deactivate_compare_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_deactivate_compare_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_special_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_compare_category_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_compare_category_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_compare_category_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_compare_category_name'"
