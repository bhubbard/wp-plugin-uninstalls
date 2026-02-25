#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elex_nyp_customization_data'
wp option delete 'nyp_general_settings'
wp option delete 'elex_cpp_settings_enable_min_product_price'
wp option delete 'elex_cpp_settings_tab_min_product_price'
wp option delete 'elex_cpp_settings_tab_min_product_price_type'
wp option delete 'elex_cpp_settings_tab_max_product_price'
wp option delete 'elex_cpp_settings_tab_max_product_price_type'
wp option delete 'elex_cpp_settings_tab_min_product_price_label'
wp option delete 'elex_cpp_settings_tab_min_product_price_description'
wp option delete 'elex_cpp_settings_add_to_cart_label'
wp option delete 'elex_cpp_settings_enable_regular_sale_price_on_product_page'
wp option delete 'elex_cpp_settings_disable_settings_on_shop_page'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'elex_cpp_settings_tab_product_category'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_category_custom_text_field_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_category_custom_text_field_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_category_custom_text_field_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_category_custom_text_field_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_type_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_category_custom_min_price_type_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_type_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_type_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_category_custom_min_price_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_category_custom_min_price_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_type_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_category_custom_max_price_type_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_type_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_type_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_category_custom_max_price_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_category_custom_max_price_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_product_min_price_dynamic_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_product_min_price_dynamic_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_product_min_price_dynamic_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_product_min_price_dynamic_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_product_min_price_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_product_min_price_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_product_min_price_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_product_min_price_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_hide_price_regular_sale_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_hide_price_regular_sale_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_hide_price_regular_sale_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_hide_price_regular_sale_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elex_wfp_add_to_cart_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elex_wfp_add_to_cart_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elex_wfp_add_to_cart_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elex_wfp_add_to_cart_text'"
