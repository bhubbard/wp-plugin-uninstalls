#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfrdcd_debug_mode'
wp option delete 'sfrdcd_bd_show_default_image'
wp option delete 'sfrdcd_bd_default_category_image'
wp option delete 'usfrdcd_directorist_enabled'
wp option delete 'usfrdcd_universal_enabled'
wp option delete 'usfrdcd_title_format'
wp option delete 'usfrdcd_show_image'
wp option delete 'usfrdcd_image_size'
wp option delete 'usfrdcd_show_subcategories'
wp option delete 'sfrdcd_show_category_icons'
wp option delete 'usfrdcd_subcategories_title'
wp option delete 'usfrdcd_show_subcategory_descriptions'
wp option delete 'usfrdcd_inject_position'
wp option delete 'sfrdcd_show_description'
wp option delete 'sfrdcd_color_mode'
wp option delete 'sfrdcd_primary_color'
wp option delete 'sfrdcd_background_color'
wp option delete 'sfrdcd_text_color'
wp option delete 'sfrdcd_border_color'
wp option delete 'sfrdcd_subcategory_primary_color'
wp option delete 'sfrdcd_subcategory_hover_color'
wp option delete 'sfrdcd_title_format'
wp option delete 'sfrdcd_image_size'
wp option delete 'sfrdcd_selected_directory_plugin'
wp option delete 'sfrdcd_inject_content'
wp option delete 'sfrdcd_show_image'
wp option delete 'sfrdcd_inject_method'
wp option delete 'sfrdcd_image_alignment'
wp option delete 'sfrdcd_tag_show_title'
wp option delete 'sfrdcd_show_title'
wp option delete 'sfrdcd_custom_class'
wp option delete 'sfrdcd_style_type'
wp option delete 'sfrdcd_image_position'
wp option delete 'sfrdcd_title_tag'
wp option delete 'sfrdcd_show_subcategories'
wp option delete 'sfrdcd_subcategories_layout'
wp option delete 'sfrdcd_subcategories_title'
wp option delete 'sfrdcd_subcategories_heading_tag'
wp option delete 'sfrdcd_max_subcategories'
wp option delete 'sfrdcd_show_subcategories_title'
wp option delete 'sfrdcd_inject_position'
wp option delete 'sfrdcd_show_icon'
wp option delete 'sfrdcd_custom_image_size'
wp option delete 'sfrdcd_show_subcategory_descriptions'
wp option delete 'sfrdcd_subcategory_animation'
wp option delete 'sfrdcd_subcategory_show_image'
wp option delete 'sfrdcd_subcategory_show_title'
wp option delete 'sfrdcd_subcategory_title_format'
wp option delete 'sfrdcd_activation_date'
wp option delete 'sfrdcd_licence_status'
wp option delete 'sfrdcd_development_mode'
wp option delete 'sfrdcd_uninstall_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtcl_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtcl_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfrdcd_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbdp_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbdp_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbdp_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbdp_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbdp_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbdp_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbdp_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbdp_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yoast_wpseo_metadesc'"
