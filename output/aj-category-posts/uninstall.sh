#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajcps_custom_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ajcps_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ajcps_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ajcps_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ajcps_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ajcps_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ajcps_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ajcps_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ajcps_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ajcps_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ajcps_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ajcps_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ajcps_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ajcps_excerpt_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ajcps_excerpt_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ajcps_excerpt_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ajcps_excerpt_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_views_count'"
