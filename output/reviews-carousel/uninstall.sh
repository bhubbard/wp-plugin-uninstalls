#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revica_items'
wp option delete 'revica_autoplay'
wp option delete 'revica_arrows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_revica_media_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_revica_media_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_revica_media_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_revica_media_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_revica_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_revica_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_revica_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_revica_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_revica_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_revica_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_revica_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_revica_image_id'"
