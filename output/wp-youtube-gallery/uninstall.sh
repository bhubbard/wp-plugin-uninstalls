#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpyg_min_h'
wp option delete 'wpyg_lightbox'
wp option delete 'wpyg_iframe_w'
wp option delete 'wpyg_desc'
wp option delete 'wpyg_title'
wp option delete 'wpyg_content_limit'
wp option delete 'wpyg_per_row_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpyg_video-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpyg_video-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpyg_video-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpyg_video-id'"
