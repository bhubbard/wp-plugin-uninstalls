#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'quick_view_ultimate_enable'
wp option delete 'quick_view_ultimate_popup_content'
wp option delete 'wc_quick_view_ultimate_version'
wp option delete 'wc_quick_view_lite_version'
wp option delete 'wc_quick_view_ultimate_just_installed'
wp option delete 'wc_product_quick_view_style_version'
wp option delete 'quick_view_template_global_settings'
wp option delete 'quick_view_ultimate_popup_tool'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'quick_view_ultimate_on_hover_bt_text'
wp option delete 'quick_view_ultimate_on_hover_bt_alink'
wp option delete 'quick_view_ultimate_on_hover_bt_padding_tb'
wp option delete 'quick_view_ultimate_on_hover_bt_padding_lr'
wp option delete 'quick_view_ultimate_on_hover_bt_bg'
wp option delete 'quick_view_ultimate_on_hover_bt_bg_from'
wp option delete 'quick_view_ultimate_on_hover_bt_bg_to'
wp option delete 'quick_view_ultimate_on_hover_bt_border'
wp option delete 'quick_view_ultimate_on_hover_bt_font'
wp option delete 'quick_view_ultimate_on_hover_bt_shadow'
wp option delete 'quick_view_ultimate_on_hover_bt_transparent'
wp option delete 'quick_view_ultimate_type'
wp option delete 'quick_view_ultimate_under_image_bt_type'
wp option delete 'quick_view_ultimate_under_image_bt_alink'
wp option delete 'quick_view_ultimate_under_image_link_text'
wp option delete 'quick_view_ultimate_under_image_link_font'
wp option delete 'quick_view_ultimate_under_image_link_font_hover_color'
wp option delete 'quick_view_ultimate_under_image_bt_text'
wp option delete 'quick_view_ultimate_under_image_bt_padding_tb'
wp option delete 'quick_view_ultimate_under_image_bt_padding_lr'
wp option delete 'quick_view_ultimate_under_image_bt_bg'
wp option delete 'quick_view_ultimate_under_image_bt_bg_from'
wp option delete 'quick_view_ultimate_under_image_bt_bg_to'
wp option delete 'quick_view_ultimate_under_image_bt_border'
wp option delete 'quick_view_ultimate_under_image_bt_font'
wp option delete 'quick_view_ultimate_under_image_bt_margin'
wp option delete 'quick_view_ultimate_card_class_trigger'
wp option delete 'quick_view_ultimate_colorbox_center_on_scroll'
wp option delete 'quick_view_ultimate_colorbox_transition'
wp option delete 'quick_view_ultimate_colorbox_speed'
wp option delete 'quick_view_ultimate_colorbox_overlay_color'
wp option delete 'quick_view_ultimate_prettyphoto_speed'
wp option delete 'quick_view_ultimate_prettyphoto_overlay_color'
wp option delete 'quick_view_ultimate_colorbox_popup_width'
wp option delete 'quick_view_ultimate_colorbox_popup_height'
wp option delete 'quick_view_ultimate_prettyphoto_popup_width'
wp option delete 'quick_view_template_dynamic_gallery_activate'
wp option delete 'quick_view_ultimate_on_hover_bt_border_width'
wp option delete 'quick_view_ultimate_on_hover_bt_border_style'
wp option delete 'quick_view_ultimate_on_hover_bt_border_color'
wp option delete 'quick_view_ultimate_on_hover_bt_rounded'
wp option delete 'quick_view_ultimate_on_hover_bt_font_family'
wp option delete 'quick_view_ultimate_on_hover_bt_font_size'
wp option delete 'quick_view_ultimate_on_hover_bt_font_style'
wp option delete 'quick_view_ultimate_on_hover_bt_font_color'
wp option delete 'quick_view_ultimate_on_hover_bt_enable_shadow'
wp option delete 'quick_view_ultimate_on_hover_bt_shadow_color'
wp option delete 'quick_view_ultimate_under_image_link_font_family'
wp option delete 'quick_view_ultimate_under_image_link_font_size'
wp option delete 'quick_view_ultimate_under_image_link_font_style'
wp option delete 'quick_view_ultimate_under_image_link_font_color'
wp option delete 'quick_view_ultimate_under_image_bt_border_width'
wp option delete 'quick_view_ultimate_under_image_bt_border_style'
wp option delete 'quick_view_ultimate_under_image_bt_border_color'
wp option delete 'quick_view_ultimate_under_image_bt_rounded'
wp option delete 'quick_view_ultimate_under_image_bt_font_family'
wp option delete 'quick_view_ultimate_under_image_bt_font_size'
wp option delete 'quick_view_ultimate_under_image_bt_font_style'
wp option delete 'quick_view_ultimate_under_image_bt_font_color'
wp option delete 'quick_view_ultimate_fancybox_overlay_color'
wp option delete 'quick_view_template_gallery_style_settings'
wp option delete 'quick_view_template_control_settings'
wp option delete 'quick_view_template_product_title_settings'
wp option delete 'quick_view_template_product_rating_settings'
wp option delete 'quick_view_template_product_description_settings'
wp option delete 'quick_view_template_product_meta_settings'
wp option delete 'quick_view_template_product_price_settings'
wp option delete 'quick_view_template_quantity_selector_settings'
wp option delete 'quick_view_template_addtocart_settings'
wp option delete 'quick_view_template_readmore_settings'
wp option delete 'quick_view_template_gallery_thumbnails_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'quick_view_ultimate_under_image_bt_class'
wp option delete 'quick_view_ultimate_fancybox_popup_width'
wp option delete 'quick_view_ultimate_fancybox_popup_height'
wp option delete 'quick_view_ultimate_fancybox_center_on_scroll'
wp option delete 'quick_view_ultimate_fancybox_transition_in'
wp option delete 'quick_view_ultimate_fancybox_transition_out'
wp option delete 'quick_view_ultimate_fancybox_speed_in'
wp option delete 'quick_view_ultimate_fancybox_speed_out'
wp option delete 'quick_view_template_gallery_icon_styles_settings'
wp option delete 'quick_view_template_product_data_settings'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_exclude_image'"
