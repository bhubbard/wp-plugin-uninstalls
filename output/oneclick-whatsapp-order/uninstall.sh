#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wa_order_option_dismiss_notice_confirmation'
wp option delete 'wa_order_force_use_wa_me'
wp option delete 'wa_order_whatsapp_base_url'
wp option delete 'wa_order_whatsapp_base_url_desktop'
wp option delete 'wa_order_option_enable_single_product'
wp option delete 'wa_order_selected_wa_number_single_product'
wp option delete 'wa_order_single_product_link_type'
wp option delete 'wa_order_single_product_button_position'
wp option delete 'wa_order_single_force_fullwidth'
wp option delete 'wa_order_option_message'
wp option delete 'wa_order_option_text_button'
wp option delete 'wa_order_option_single_show_regular_sale_prices'
wp option delete 'wa_order_option_target'
wp option delete 'wa_order_exclude_price'
wp option delete 'wa_order_exclude_product_url'
wp option delete 'wa_order_option_quantity_label'
wp option delete 'wa_order_option_price_label'
wp option delete 'wa_order_option_url_label'
wp option delete 'wa_order_option_total_amount_label'
wp option delete 'wa_order_option_total_discount_label'
wp option delete 'wa_order_option_payment_method_label'
wp option delete 'wa_order_option_thank_you_label'
wp option delete 'wa_order_option_tax_label'
wp option delete 'wa_order_delete_data_on_uninstall'
wp option delete 'wa_order_option_add_button_to_cart'
wp option delete 'wa_order_selected_wa_number_cart'
wp option delete 'wa_order_option_cart_hide_checkout'
wp option delete 'wa_order_option_cart_button_text'
wp option delete 'wa_order_option_cart_custom_message'
wp option delete 'wa_order_option_cart_hide_product_url'
wp option delete 'wa_order_option_cart_enable_variations'
wp option delete 'wa_order_option_cart_include_tax'
wp option delete 'wa_order_option_cart_open_new_tab'
wp option delete 'wa_order_bg_color'
wp option delete 'wa_order_bg_hover_color'
wp option delete 'wa_order_txt_color'
wp option delete 'wa_order_txt_hover_color'
wp option delete 'wa_order_bshdw_horizontal'
wp option delete 'wa_order_bshdw_vertical'
wp option delete 'wa_order_bshdw_blur'
wp option delete 'wa_order_bshdw_spread'
wp option delete 'wa_order_btn_box_shdw'
wp option delete 'wa_order_bshdw_horizontal_hover'
wp option delete 'wa_order_bshdw_vertical_hover'
wp option delete 'wa_order_bshdw_blur_hover'
wp option delete 'wa_order_bshdw_spread_hover'
wp option delete 'wa_order_btn_box_shdw_hover'
wp option delete 'wa_order_bshdw_position'
wp option delete 'wa_order_bshdw_position_hover'
wp option delete 'wa_order_option_remove_btn'
wp option delete 'wa_order_option_remove_btn_mobile'
wp option delete 'wa_order_option_remove_quantity'
wp option delete 'wa_order_option_remove_price'
wp option delete 'wa_order_option_remove_cart_btn'
wp option delete 'wa_order_option_exlude_single_product_cats'
wp option delete 'wa_order_option_exlude_single_product_tags'
wp option delete 'wa_order_single_button_margin_top'
wp option delete 'wa_order_single_button_margin_right'
wp option delete 'wa_order_single_button_margin_bottom'
wp option delete 'wa_order_single_button_margin_left'
wp option delete 'wa_order_single_button_padding_top'
wp option delete 'wa_order_single_button_padding_right'
wp option delete 'wa_order_single_button_padding_bottom'
wp option delete 'wa_order_single_button_padding_left'
wp option delete 'wa_order_display_option_shop_loop_hide_desktop'
wp option delete 'wa_order_display_option_shop_loop_hide_mobile'
wp option delete 'wa_order_option_exlude_shop_product_cats'
wp option delete 'wa_order_exlude_shop_product_cats_archive'
wp option delete 'wa_order_option_exlude_shop_product_tags'
wp option delete 'wa_order_exlude_shop_product_tags_archive'
wp option delete 'wa_order_display_option_cart_hide_desktop'
wp option delete 'wa_order_display_option_cart_hide_mobile'
wp option delete 'wa_order_display_option_checkout_hide_desktop'
wp option delete 'wa_order_display_option_checkout_hide_mobile'
wp option delete 'wa_order_option_convert_phone_order_details'
wp option delete 'wa_order_option_custom_message_backend_order_details'
wp option delete 'wa_order_floating_button'
wp option delete 'wa_order_selected_wa_number_floating'
wp option delete 'wa_order_floating_message'
wp option delete 'wa_order_floating_source_url'
wp option delete 'wa_order_floating_source_url_label'
wp option delete 'wa_order_floating_target'
wp option delete 'wa_order_floating_button_position'
wp option delete 'wa_order_floating_tooltip_enable'
wp option delete 'wa_order_floating_tooltip'
wp option delete 'wa_order_floating_hide_mobile'
wp option delete 'wa_order_floating_hide_desktop'
wp option delete 'wa_order_floating_hide_all_single_posts'
wp option delete 'wa_order_floating_hide_all_single_pages'
wp option delete 'wa_order_floating_hide_specific_posts'
wp option delete 'wa_order_floating_hide_specific_pages'
wp option delete 'wa_order_floating_hide_product_cats'
wp option delete 'wa_order_floating_hide_product_tags'
wp option delete 'wa_order_floating_button_margin_top'
wp option delete 'wa_order_floating_button_margin_right'
wp option delete 'wa_order_floating_button_margin_bottom'
wp option delete 'wa_order_floating_button_margin_left'
wp option delete 'wa_order_floating_button_padding_top'
wp option delete 'wa_order_floating_button_padding_right'
wp option delete 'wa_order_floating_button_padding_bottom'
wp option delete 'wa_order_floating_button_padding_left'
wp option delete 'wa_order_floating_button_icon_margin_top'
wp option delete 'wa_order_floating_button_icon_margin_right'
wp option delete 'wa_order_floating_button_icon_margin_bottom'
wp option delete 'wa_order_floating_button_icon_margin_left'
wp option delete 'wa_order_floating_button_icon_padding_top'
wp option delete 'wa_order_floating_button_icon_padding_right'
wp option delete 'wa_order_floating_button_icon_padding_bottom'
wp option delete 'wa_order_floating_button_icon_padding_left'
wp option delete 'wa_order_gdpr_status_enable'
wp option delete 'wa_order_gdpr_message'
wp option delete 'wa_order_gdpr_privacy_page'
wp option delete 'wa_order_selected_wa_number_shortcode'
wp option delete 'wa_order_shortcode_text_button'
wp option delete 'wa_order_shortcode_message'
wp option delete 'wa_order_shortcode_target'
wp option delete 'wa_order_option_enable_button_shop_loop'
wp option delete 'wa_order_selected_wa_number_shop'
wp option delete 'wa_order_option_hide_atc_shop_loop'
wp option delete 'wa_order_option_button_text_shop_loop'
wp option delete 'wa_order_option_custom_message_shop_loop'
wp option delete 'wa_order_option_shop_loop_exclude_price'
wp option delete 'wa_order_option_shop_loop_show_regular_sale_prices'
wp option delete 'wa_order_option_shop_loop_hide_product_url'
wp option delete 'wa_order_option_shop_loop_open_new_tab'
wp option delete 'wa_order_option_enable_button_thank_you'
wp option delete 'wa_order_selected_wa_number_thanks'
wp option delete 'wa_order_option_custom_thank_you_button_text'
wp option delete 'wa_order_option_custom_thank_you_custom_message'
wp option delete 'wa_order_option_custom_thank_you_title'
wp option delete 'wa_order_option_custom_thank_you_subtitle'
wp option delete 'wa_order_option_custom_thank_you_customer_details_label'
wp option delete 'wa_order_option_custom_thank_you_total_products_label'
wp option delete 'wa_order_option_custom_thank_you_inclue_coupon'
wp option delete 'wa_order_option_custom_thank_you_coupon_label'
wp option delete 'wa_order_option_thank_you_order_summary_link'
wp option delete 'wa_order_option_thank_you_order_summary_label'
wp option delete 'wa_order_option_thank_you_payment_link'
wp option delete 'wa_order_option_thank_you_payment_link_label'
wp option delete 'wa_order_option_thank_you_view_order_link'
wp option delete 'wa_order_option_thank_you_view_order_label'
wp option delete 'wa_order_option_custom_thank_you_order_number'
wp option delete 'wa_order_option_custom_thank_you_order_number_label'
wp option delete 'wa_order_option_custom_thank_you_include_sku'
wp option delete 'wa_order_option_custom_thank_you_include_tax'
wp option delete 'wa_order_option_custom_thank_you_include_shipping'
wp option delete 'wa_order_option_custom_thank_you_shipping_label'
wp option delete 'wa_order_option_custom_thank_you_include_order_date'
wp option delete 'wa_order_option_custom_thank_you_open_new_tab'
wp option delete 'wa_order_selected_wa_number'
wp option delete 'wa_order_option_thank_you_redirect_checkout'
wp option delete 'wa_order_option_phone_number'

# Delete Transients
wp transient delete 'wa_order_number_empty_notice'
wp transient delete 'wa_order_cat_ids'
wp transient delete 'wa_order_tag_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wa_order_phone_number_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wa_order_phone_number_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wa_order_phone_number_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wa_order_phone_number_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_atc_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_atc_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_atc_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_atc_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wa_order_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wa_order_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wa_order_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wa_order_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_wa_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_wa_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_wa_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_wa_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_force_show_atc_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_force_show_atc_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_force_show_atc_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_force_show_atc_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wa_order_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wa_order_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wa_order_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wa_order_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wa_order_phone_number_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wa_order_phone_number_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wa_order_phone_number_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wa_order_phone_number_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wa_order_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wa_order_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wa_order_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wa_order_phone_number'"
