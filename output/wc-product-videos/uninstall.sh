#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_youtube_url_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_youtube_url_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_youtube_url_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_youtube_url_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_position_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_position_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_position_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_position_meta_key'"
