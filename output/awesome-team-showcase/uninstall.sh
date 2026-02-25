#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awts_mem_pro_page_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awts_member_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awts_member_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awts_member_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awts_member_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awts_member_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awts_member_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awts_member_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awts_member_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awts_member_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awts_member_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awts_member_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awts_member_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awts_member_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awts_member_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awts_member_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awts_member_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awts_member_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awts_member_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awts_member_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awts_member_google'"
