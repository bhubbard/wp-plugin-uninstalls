#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_ajax_notification'
wp option delete 'cmt_single_page'
wp option delete 'cmt_ajax_load'
wp option delete 'cmt_show_gridview'
wp option delete 'cmt_mem_pro_page_slug'
wp option delete 'cmt_profile_page'
wp option delete 'cmt_mem_per_page'
wp option delete 'cmt_custom_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmt_member_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmt_member_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmt_member_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmt_member_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmt_member_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmt_member_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmt_member_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmt_member_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmt_member_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmt_member_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmt_member_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmt_member_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmt_member_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmt_member_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmt_member_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmt_member_linkedin'"
