#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slider_popup_design'
wp option delete 'related_product'
wp option delete 'product_page_reels'
wp option delete 'product_page_video'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medium_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medium_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medium_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medium_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reels_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reels_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reels_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reels_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productsData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productsData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productsData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productsData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_home_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_home_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_home_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_home_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reelSliderProduct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reelSliderProduct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reelSliderProduct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reelSliderProduct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'right_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'right_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'right_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'right_video'"
