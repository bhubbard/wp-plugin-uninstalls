#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'videoshop_info'
wp option delete 'videoshop_template'
wp option delete 'videoshop_slider_layout'
wp option delete 'videoshop_slider_responsive'
wp option delete 'videoshop_sliderautoplay'
wp option delete 'videoshop_slider_swipe'
wp option delete 'videoshop_sliderfade'
wp option delete 'videoshop_arrowinfinite'
wp option delete 'videoshop_arrowdisable'
wp option delete 'videoshop_arrow_thumb'
wp option delete 'custom_icon'
wp option delete 'videoshop_show_lightbox'
wp option delete 'videoshop_show_zoom'
wp option delete 'videoshop_zoomlevel'
wp option delete 'videoshop_gallery_action'
wp option delete 'videoshop_hide_thumbnails'
wp option delete 'videoshop_hide_thumbnail'
wp option delete 'videoshop_thumbnails_to_show'
wp option delete 'videoshop_adaptive_height'
wp option delete 'videoshop_show_only_video'
wp option delete 'videoshop_controls'
wp option delete 'videoshop_videoloop'
wp option delete 'videoshop_vid_autoplay'
wp option delete 'videoshop_place_of_the_video'
wp option delete 'videoshop_arrowcolor'
wp option delete 'videoshop_arrowbgcolor'
wp option delete 'videoshop_aspect_ratio'
wp option delete 'videoshop_on_shop_page'
wp option delete 'videoshop_options'

# Delete Transients
wp transient delete 'videoshop-plugin_setting_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_product_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_product_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_product_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_product_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_video_text_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_video_text_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_video_text_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_video_text_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_product_video_thumb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_product_video_thumb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_product_video_thumb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_product_video_thumb_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_video_upload_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_video_upload_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_video_upload_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_video_upload_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_video_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_video_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_video_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_video_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoshop_video_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoshop_video_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoshop_video_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoshop_video_description'"
