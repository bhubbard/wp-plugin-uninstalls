#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upow_backorder_label_text'
wp option delete 'upow_backorder_addto_cart_text'
wp option delete 'upow_select_product'
wp option delete 'upow_exclude_product'
wp option delete 'upow_extra_product_feature_title'
wp option delete 'upow_addon_title_text_size'
wp option delete 'upow_addon_title_text_color'
wp option delete 'addon_item_title_text_color'
wp option delete 'addon_item_title_bg_color'
wp option delete 'addon_item_label_text_color'
wp option delete 'addon_price_info_bg_color'
wp option delete 'addon_price_info_text_price_color'
wp option delete 'addon_price_info_border_bottom_color'
wp option delete 'upow_addon_title_padding'
wp option delete 'upow_product_per_page'
wp option delete 'upow_google_analytics'
wp option delete 'upow_custom_css'
wp option delete 'upow_custom_js'
wp option delete 'upow_preorder_addto_cart_text'
wp option delete 'upow_preorder_available_text_msg'
wp option delete 'upow_preorder_pre_released_message'
wp option delete 'upow_one_click_checkout_btn_text'
wp option delete 'upow_sorting_on_off'
wp option delete 'upow_swatches_position'
wp option delete 'upow_swatches_shape_style'
wp option delete 'upow_swatches_disable_attribute_effect'
wp option delete 'upow_variations_label_separator_text'
wp option delete 'change_ajax_variations_thresholds'
wp option delete 'upow_swatches_item_width'
wp option delete 'upow_swatches_item_height'
wp option delete 'upow_font_size'
wp option delete 'upow_tooltip_box_width'
wp option delete 'upow_tooltip_box_height'
wp option delete 'upow_tooltip_background_color'
wp option delete 'upow_tooltip_font_color'
wp option delete 'upow_swatches_tooltip_pos'
wp option delete 'upow_flash_sale_settings'
wp option delete 'upow_enable_flash_sale_here'
wp option delete 'upow_override_saleflash'
wp option delete 'upow_backorder_on_off'
wp option delete 'upow_countdown_position'
wp option delete 'upow_countdown_style'
wp option delete 'upow_countdown_timer_title'
wp option delete 'upow_extra_feature_on_off_global'
wp option delete 'upow_global_extra_feature_on_off'
wp option delete 'upow_extra_fields_items'
wp option delete 'upow_preorder_on_off'
wp option delete 'upow_oneclick_checkout_on_off'
wp option delete 'upow_oneclick_checkout_shop_enable'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'upow_enable_global_swatch_on_off'
wp option delete 'upow_enable_swatch_shop_page'
wp option delete 'upow_enable_swatch_product_page'
wp option delete 'upow_enable_disable_tooltip_design'
wp option delete 'upow_enable_swatches_image_tooltip'
wp option delete 'upow_enable_swith_label'
wp option delete 'upow_convert_dropdown_to_label'
wp option delete 'upow_enable_clear_btn'
wp option delete 'upow_show_customer_cart_page'
wp option delete 'upow_enable_extra_options_checkout_page'
wp option delete 'upow_enable_extra_options_order_page'
wp option delete 'woocommerce_currency_pos'
wp option delete 'upow_accordion_style_on_off'
wp option delete 'upow_show_countdown_single_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upow_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upow_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upow_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upow_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_sample'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_sample'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_sample'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_sample'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_availability_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_availability_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_availability_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_availability_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_available_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_available_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_available_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_available_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_availability_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_availability_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_availability_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_availability_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_pre_released_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_pre_released_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_pre_released_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_pre_released_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_manage_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_manage_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_manage_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_manage_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_amount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_amount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_amount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_amount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upow_preorder_variable_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upow_preorder_variable_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upow_preorder_variable_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upow_preorder_variable_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label_type'"
