#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset_thumbnails_activate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%popup_gallery'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset_galleries_activate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset_feature_image_activate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset_image_source'"
wp option delete 'a3rev_woo_dgallery_lite_version'
wp option delete 'a3_dynamic_gallery_db_version'
wp option delete 'a3rev_woo_dgallery_just_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activate'"
wp option delete 'woocommerce_cloud_enableCloud'
wp option delete 'wc_dgallery_lite_clean_on_deletion'
wp option delete 'a3_dynamic_gallery_db_updated'
wp option delete 'woo_dynamic_gallery_style_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%caption_font'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_font'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image_source'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_feature_image'"
wp option delete 'woocommerce_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_gallery_thumb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_opacity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_padding_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_padding_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_padding_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_padding_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nextpre_icons_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_opacity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_padding_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_padding_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_padding_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_padding_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_margin_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_vertical_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pauseplay_icon_horizontal_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_padding_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_nextpre_icons_padding_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stop_scroll_1image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%width_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gallery_height_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_width_fixed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_width_responsive'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_show_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_columns'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_spacing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_auto_start'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_speed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_effect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_animation_speed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_thumb_1image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_current_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bg_image_wrapper'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_bg_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%border_image_wrapper_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bg_nav_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_bg_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_gallery_bg_des'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%caption_bg_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_margin_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_padding_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_padding_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_padding_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%main_padding_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_margin_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_padding_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_padding_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_padding_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_padding_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%navbar_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%caption_bg_transparent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%transition_scroll_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icons_display_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_slider_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_slider_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thumb_slider_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'wc_dgallery_product_gallery_width'
wp option delete 'wc_dgallery_width_type'
wp option delete 'wc_dgallery_gallery_height_type'
wp option delete 'wc_dgallery_product_gallery_height'
wp option delete 'wc_dgallery_product_gallery_auto_start'
wp option delete 'wc_dgallery_product_gallery_speed'
wp option delete 'wc_dgallery_product_gallery_effect'
wp option delete 'wc_dgallery_product_gallery_animation_speed'
wp option delete 'wc_dgallery_stop_scroll_1image'
wp option delete 'wc_dgallery_auto_feature_image'
wp option delete 'wc_dgallery_bg_image_wrapper'
wp option delete 'wc_dgallery_border_image_wrapper_color'
wp option delete 'wc_dgallery_main_bg_color'
wp option delete 'wc_dgallery_main_border'
wp option delete 'wc_dgallery_main_shadow'
wp option delete 'wc_dgallery_main_margin_top'
wp option delete 'wc_dgallery_main_margin_bottom'
wp option delete 'wc_dgallery_main_margin_left'
wp option delete 'wc_dgallery_main_margin_right'
wp option delete 'wc_dgallery_main_padding_top'
wp option delete 'wc_dgallery_main_padding_bottom'
wp option delete 'wc_dgallery_main_padding_left'
wp option delete 'wc_dgallery_main_padding_right'
wp option delete 'wc_dgallery_hide_woo_gallery'
wp option delete 'wc_dgallery_popup_gallery'
wp option delete 'wc_dgallery_activate'
wp option delete 'wc_dgallery_reset_galleries_activate'
wp option delete 'wc_dgallery_show_variation'
wp option delete 'wc_dgallery_reset_variation_activate'
wp option delete 'wc_dgallery_caption_font'
wp option delete 'wc_dgallery_caption_font_size'
wp option delete 'wc_dgallery_caption_font_style'
wp option delete 'wc_dgallery_product_gallery_text_color'
wp option delete 'wc_dgallery_product_gallery_bg_des'
wp option delete 'wc_dgallery_caption_bg_color'
wp option delete 'wc_dgallery_caption_bg_transparent'
wp option delete 'wc_dgallery_product_gallery_nav'
wp option delete 'wc_dgallery_navbar_font'
wp option delete 'wc_dgallery_navbar_font_size'
wp option delete 'wc_dgallery_navbar_font_style'
wp option delete 'wc_dgallery_bg_nav_color'
wp option delete 'wc_dgallery_bg_nav_text_color'
wp option delete 'wc_dgallery_navbar_height'
wp option delete 'wc_dgallery_navbar_bg_color'
wp option delete 'wc_dgallery_navbar_border'
wp option delete 'wc_dgallery_navbar_shadow'
wp option delete 'wc_dgallery_navbar_margin_top'
wp option delete 'wc_dgallery_navbar_margin_bottom'
wp option delete 'wc_dgallery_navbar_margin_left'
wp option delete 'wc_dgallery_navbar_margin_right'
wp option delete 'wc_dgallery_navbar_padding_top'
wp option delete 'wc_dgallery_navbar_padding_bottom'
wp option delete 'wc_dgallery_navbar_padding_left'
wp option delete 'wc_dgallery_navbar_padding_right'
wp option delete 'wc_dgallery_navbar_separator'
wp option delete 'wc_dgallery_lazy_load_scroll'
wp option delete 'wc_dgallery_transition_scroll_bar'
wp option delete 'wc_dgallery_enable_gallery_thumb'
wp option delete 'wc_dgallery_hide_thumb_1image'
wp option delete 'wc_dgallery_thumb_width'
wp option delete 'wc_dgallery_thumb_height'
wp option delete 'wc_dgallery_thumb_spacing'
wp option delete 'wc_dgallery_thumb_columns'
wp option delete 'wc_dgallery_thumb_border_color'
wp option delete 'wc_dgallery_thumb_current_border_color'
wp option delete 'wc_dgallery_thumb_show_type'
wp option delete 'wc_dgallery_product_gallery_width_responsive'
wp option delete 'wc_dgallery_product_gallery_width_fixed'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_actived_d_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_actived_d_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_actived_d_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_actived_d_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_dgallery_image_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_dgallery_image_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_dgallery_image_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_dgallery_image_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_dgallery_auto_feature_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_dgallery_auto_feature_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_dgallery_auto_feature_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_dgallery_auto_feature_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_exclude_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_dgallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_dgallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_dgallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_dgallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_dgallery_enable_gallery_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_dgallery_enable_gallery_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_dgallery_enable_gallery_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_dgallery_enable_gallery_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery_bk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery_bk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery_bk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery_bk'"
