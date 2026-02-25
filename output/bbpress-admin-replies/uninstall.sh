#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_is_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_is_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_is_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_is_admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_is_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_is_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_is_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_is_admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_is_private'"
