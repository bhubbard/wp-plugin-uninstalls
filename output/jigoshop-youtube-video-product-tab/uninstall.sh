#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jigo_youtube_video_tab_custom_player'
wp option delete 'jigo_youtube_video_tab_player_skin'
wp option delete 'jigo_youtube_video_tab_player_skin_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jigo_youtube_video_product_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jigo_youtube_video_product_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jigo_youtube_video_product_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jigo_youtube_video_product_tab'"
