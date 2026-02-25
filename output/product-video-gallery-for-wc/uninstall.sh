#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_video_gallery_for_wc_embedVideo'
wp option delete 'product_video_gallery_for_wc_thumb_postition'
wp option delete 'product_video_gallery_for_wc_setting'
wp option delete 'product_video_gallery_for_wc_thumb_gap'
wp option delete 'product_video_gallery_for_wc_thumb_img_gap'
wp option delete 'product_video_gallery_for_wc_thumb_img_round'
wp option delete 'product_video_gallery_for_wc_thumb_img_numbers'
wp option delete 'product_video_gallery_for_wc_thumb_nav_button_color'
wp option delete 'product_video_gallery_for_wc_thumb_nav_arrow_color'
wp option delete 'product_video_gallery_for_wc_preload'
wp option delete 'product_video_gallery_for_wc_autoplay'
wp option delete 'product_video_gallery_for_wc_muted'
wp option delete 'product_video_gallery_for_wc_loop'
wp option delete 'product_video_gallery_for_wc_resetOnEnd'
wp option delete 'product_video_gallery_for_wc_enableSmoothSeeking'
wp option delete 'product_video_gallery_for_wc_playsinline'
wp option delete 'product_video_gallery_for_wc_playbackRates'
wp option delete 'product_video_gallery_for_wc_pictureInPicture'
wp option delete 'product_video_gallery_for_wc_bigPlayButton'
wp option delete 'product_video_gallery_for_wc_progressControl'
wp option delete 'product_video_gallery_for_wc_remainingTimeDisplay'
wp option delete 'product_video_gallery_for_wc_displayNegative'
wp option delete 'product_video_gallery_for_wc_volumeControl'
wp option delete 'product_video_gallery_for_wc_fullscreenToggle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_video_gallery_for_wc_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_video_gallery_for_wc_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_video_gallery_for_wc_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_video_gallery_for_wc_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_video_gallery_variable_for_wc_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_video_gallery_variable_for_wc_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_video_gallery_variable_for_wc_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_video_gallery_variable_for_wc_data'"
