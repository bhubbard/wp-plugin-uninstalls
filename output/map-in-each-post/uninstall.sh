#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mapInEachPost_post_types'
wp option delete 'mapineachpost_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_in_each_post_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_in_each_post_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_in_each_post_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_in_each_post_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mapineachpost_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mapineachpost_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mapineachpost_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mapineachpost_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_mapineachpost_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_mapineachpost_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_mapineachpost_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_mapineachpost_points'"
