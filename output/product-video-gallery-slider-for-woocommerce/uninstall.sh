#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nickx_slider_layout'
wp option delete 'nickx_slider_responsive'
wp option delete 'nickx_sliderautoplay'
wp option delete 'nickx_sliderfade'
wp option delete 'nickx_arrowinfinite'
wp option delete 'nickx_arrowdisable'
wp option delete 'nickx_arrow_thumb'
wp option delete 'custom_icon'
wp option delete 'nickx_show_lightbox'
wp option delete 'nickx_show_zoom'
wp option delete 'nickx_mobile_zoom'
wp option delete 'nickx_zoomlevel'
wp option delete 'nickx_template'
wp option delete 'nickx_gallery_action'
wp option delete 'nickx_thumbnails_hook'
wp option delete 'nickx_hide_thumbnails'
wp option delete 'nickx_hide_thumbnail'
wp option delete 'nickx_thumbnails_to_show'
wp option delete 'nickx_adaptive_height'
wp option delete 'nickx_show_only_video'
wp option delete 'nickx_controls'
wp option delete 'nickx_poster_img'
wp option delete 'nickx_videoloop'
wp option delete 'nickx_vid_autoplay'
wp option delete 'nickx_place_of_the_video'
wp option delete 'nickx_thumnails_layout'
wp option delete 'nickx_arrowcolor'
wp option delete 'nickx_arrowbgcolor'
wp option delete 'nickx_video_icon_color'

# Delete Transients
wp transient delete 'nickx-plugin_setting_notice'
wp transient delete 'nickx_wp_plugin_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_video_text_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_video_text_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_video_text_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_video_text_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_product_video_thumb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_product_video_thumb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_product_video_thumb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_product_video_thumb_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_video_upload_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_video_upload_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_video_upload_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_video_upload_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_video_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_video_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_video_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_video_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_video_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_video_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_video_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_video_description'"
