#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'dirsize_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube_v_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube_v_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube_v_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube_v_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
