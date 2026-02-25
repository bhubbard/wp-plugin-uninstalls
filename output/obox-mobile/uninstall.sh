#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obox-mobile'
wp option delete 'orig_page_on_front'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_hosted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_hosted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_hosted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_hosted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oembed_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oembed_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oembed_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oembed_info'"
