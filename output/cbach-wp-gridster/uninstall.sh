#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gridster_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gridster_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gridster_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gridster_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gridster_query_posts_not_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gridster_query_posts_not_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gridster_query_posts_not_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gridster_query_posts_not_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gridster_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gridster_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gridster_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gridster_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
