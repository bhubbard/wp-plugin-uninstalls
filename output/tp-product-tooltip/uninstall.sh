#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpwpt_lkey_state'
wp option delete '_tpt_product_category_tooltip_background'
wp option delete '_tpt_product_category_tooltip_color'
wp option delete '_tpt_product_category_tooltip_popup_animation'
wp option delete '_tpt_product_category_tooltip_border'
wp option delete '_tpt_product_category_tooltip_position'
wp option delete '_tpt_product_category_tooltip_position_mobile'
wp option delete '_tpt_product_category_tooltip_title_position'
wp option delete '_tpt_product_category_tooltip_width'
wp option delete '_tpt_product_category_tooltip_text_align'
wp option delete 'tpwpt_lkey'
wp option delete 'tpwpt_lkey_expiresAt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_css_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_css_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_css_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_css_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_css_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_css_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_css_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_css_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_min_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_min_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_min_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_min_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_activate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_activate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_activate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_activate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_position_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_position_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_position_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_position_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_border'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_border'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_border'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_border'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_popup_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_popup_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_popup_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_popup_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_hover_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_hover_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_hover_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_hover_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_tooltip_position_hook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_tooltip_position_hook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_tooltip_position_hook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_tooltip_position_hook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_youtube_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_youtube_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_youtube_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_youtube_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_youtube_icon_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_youtube_icon_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_youtube_icon_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_youtube_icon_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpt_youtube_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpt_youtube_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpt_youtube_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpt_youtube_icon_color'"
