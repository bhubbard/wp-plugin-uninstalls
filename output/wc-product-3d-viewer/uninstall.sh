#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nickx_slider_layout'
wp option delete 'nickx_sliderautoplay'
wp option delete 'nickx_arrowinfinite'
wp option delete 'nickx_arrowdisable'
wp option delete 'nickx_arrow_thumb'
wp option delete 'nickx_hide_thumbnails'
wp option delete 'nickx_gallery_action'
wp option delete 'nickx_adaptive_height'
wp option delete 'nickx_place_of_the_video'
wp option delete 'nickx_rtl'
wp option delete 'nickx_videoloop'
wp option delete 'nickx_vid_autoplay'
wp option delete 'nickx_template'
wp option delete 'nickx_controls'
wp option delete 'nickx_show_lightbox'
wp option delete 'nickx_show_zoom'
wp option delete 'nickx_show_only_video'
wp option delete 'nickx_thumbnails_to_show'
wp option delete 'nickx_arrowcolor'
wp option delete 'nickx_arrowbgcolor'
wp option delete 'wc_product_iframe_token'
wp option delete 'custom_icon'
wp option delete 'nickx_options'

# Delete Transients
wp transient delete 'nickx-plugin_setting_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nickx_product_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_api_product_url_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_api_product_url_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_api_product_url_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_api_product_url_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_video_thumb_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_video_thumb_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_video_thumb_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_video_thumb_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_api_product_thumbnail_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_api_product_thumbnail_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_api_product_thumbnail_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_api_product_thumbnail_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_api_product_id_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_api_product_id_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_api_product_id_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_api_product_id_'"
