#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpwfr_general_product_image_size'
wp option delete 'rpwfr_current_ai_request'
wp option delete 'rpwfr_product_selected_options'
wp option delete 'rpwfr_all_products'
wp option delete 'rpwfr_product_list'
wp option delete 'rpwfr_about_store'
wp option delete 'rpwfr_products_name'
wp option delete 'rpwfr_products_desc'
wp option delete 'rpwfr_ai_prompt_type'
wp option delete 'rpwfr_default_ai_prompt'
wp option delete 'rpwfr_api_request_created_status'
wp option delete 'rpwfr_prompt_request_button_hit'
wp option delete 'rpwfr_display_ai_request_notice'
wp option delete 'rpwfr_api_usage_status'
wp option delete 'rpwfr_api_model_name'
wp option delete 'rpwfr_api_valid_key_status'
wp option delete 'rpwfr_prompt_cat_selection'
wp option delete 'rpwfr_tokens_used'
wp option delete 'rpwfr_ai_request_prompt'
wp option delete 'rpwfr_openai_api_key'
wp option delete 'rpwfr_theme_column_limit'
wp option delete 'rpwfr_theme_products_limit'
wp option delete 'rpwfr_display_mode_related_products'
wp option delete 'rpwfr_shortcode_mode_related_products'
wp option delete 'rpwfr_general_color_picker_btn'
wp option delete 'rpwfr_general_color_picker_background_front'
wp option delete 'rpwfr_button_arrow_color'
wp option delete 'rpwfr_desktop'
wp option delete 'rpwfr_tab'
wp option delete 'rpwfr_mobile'
wp option delete 'rpwfr_related_title'
wp option delete 'rpwfr_display_related_products'
wp option delete 'rpwfr_related_out_of_stock'
wp option delete 'rpwfr_latest_popup_sale_notice'
wp option delete 'rpwfr_last_notice'
wp option delete 'sale_bf1_start'
wp option delete 'sale_bf2_start'
wp option delete 'sale_bf3_start'
wp option delete 'sale_bf4_start'
wp option delete 'rpwfr_display_upsells_products'
wp option delete 'rpwfr_display_mode_upsells_products'
wp option delete 'rpwfr_upsells_title'
wp option delete 'rpwfr_upsells_desktop'
wp option delete 'rpwfr_upsells_mobile'
wp option delete 'rpwfr_upsells_tab'
wp option delete 'rpwfr_openai_api_model'
wp option delete 'rpwfr_default_options'
wp option delete 'rpwfr_ai_default_check'
wp option delete 'rpwfr_api_error_data'
wp option delete 'test'
wp option delete 'rpwfr_ai_request_logs'
wp option delete 'response_ai'

# Delete Transients
wp transient delete 'rpwfr_set_model_names'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_rate_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_rate_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_rate_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_rate_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_notices_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_notices_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_notices_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_notices_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_filter_radio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_filter_radio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_filter_radio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_filter_radio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_related_products_category_include_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_related_products_category_include_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_related_products_category_include_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_related_products_category_include_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_related_products_category_exclude_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_related_products_category_exclude_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_related_products_category_exclude_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_related_products_category_exclude_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_related_products_tag_incldue_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_related_products_tag_incldue_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_related_products_tag_incldue_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_related_products_tag_incldue_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_related_products_tag_exclude_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_related_products_tag_exclude_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_related_products_tag_exclude_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_related_products_tag_exclude_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_category_radio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_category_radio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_category_radio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_category_radio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_tag_radio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_tag_radio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_tag_radio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_tag_radio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpwfr_latest_version_read_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpwfr_latest_version_read_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpwfr_latest_version_read_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpwfr_latest_version_read_message'"
