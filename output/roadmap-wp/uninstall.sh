#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_roadmap_settings'
wp option delete 'wp_roadmap_custom_taxonomies'
wp option delete 'wp_roadmap_ideas_shortcode_loaded'
wp option delete 'wp_roadmap_new_idea_shortcode_loaded'
wp option delete 'wp_roadmap_roadmap_shortcode_loaded'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idea_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idea_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idea_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idea_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'voted_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'voted_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'voted_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'voted_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_created_by_my_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_created_by_my_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_created_by_my_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_created_by_my_plugin'"
