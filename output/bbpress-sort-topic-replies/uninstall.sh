#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_sort_desc_global'
wp option delete '_bbp_sort_desc_global_no_parent'
wp option delete '_bbp_sort_show_lead_topic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_sort_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_sort_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_sort_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_sort_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_sort_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_sort_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_sort_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_sort_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic_forum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic_forum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic_forum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_sort_show_lead_topic_forum'"
