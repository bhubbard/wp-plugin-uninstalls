#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clicky_fv_player_type'
wp option delete 'clicky_fv_player_color'
wp option delete 'clicky_fv_overlay_icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_featured_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_featured_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_featured_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_featured_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_featured_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_featured_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_featured_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_featured_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_featured_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_featured_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_featured_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_featured_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_featured_video_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_featured_video_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_featured_video_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_featured_video_enabled'"
