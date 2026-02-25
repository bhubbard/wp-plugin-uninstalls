#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpl_goal_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpl_goal_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpl_goal_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpl_goal_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpl_candidate_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpl_candidate_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpl_candidate_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpl_candidate_position'"
