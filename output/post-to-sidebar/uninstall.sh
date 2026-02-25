#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p2s__use_locations'
wp option delete 'p2s_use_excerpt'
wp option delete 'p2s_use_title'
wp option delete 'p2s_post_types'
wp option delete 'p2s_use_locations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_to_sidebar_pageTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_to_sidebar_pageTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_to_sidebar_pageTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_to_sidebar_pageTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_to_sidebar_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_to_sidebar_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_to_sidebar_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_to_sidebar_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_to_sidebar_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_to_sidebar_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_to_sidebar_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_to_sidebar_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_to_sidebar_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_to_sidebar_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_to_sidebar_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_to_sidebar_location'"
