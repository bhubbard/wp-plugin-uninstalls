#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'logichop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logichop_goal_ck_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logichop_goal_ck_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logichop_goal_ck_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logichop_goal_ck_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logichop_goal_ck_tag_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logichop_goal_ck_tag_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logichop_goal_ck_tag_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logichop_goal_ck_tag_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logichop_goal_ck_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logichop_goal_ck_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logichop_goal_ck_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logichop_goal_ck_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logichop_goal_ck_custom_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logichop_goal_ck_custom_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logichop_goal_ck_custom_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logichop_goal_ck_custom_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logichop_goal_ck_custom_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logichop_goal_ck_custom_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logichop_goal_ck_custom_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logichop_goal_ck_custom_type'"
