#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_planner_providers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_social_planner_tasks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_social_planner_tasks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_social_planner_tasks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_social_planner_tasks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_social_planner_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_social_planner_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_social_planner_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_social_planner_results'"
