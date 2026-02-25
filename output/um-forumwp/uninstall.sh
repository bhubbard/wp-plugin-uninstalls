#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_options'
wp option delete 'um_forumwp_version'
wp option delete 'um_forumwp_last_version_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_um_forumwp_can_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_um_forumwp_can_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_um_forumwp_can_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_um_forumwp_can_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_um_forumwp_can_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_um_forumwp_can_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_um_forumwp_can_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_um_forumwp_can_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fmwp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fmwp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fmwp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fmwp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_original_mentions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_original_mentions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_original_mentions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_original_mentions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_um_notifications_need_mention'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_um_notifications_need_mention'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_um_notifications_need_mention'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_um_notifications_need_mention'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_um_notifications_mentioned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_um_notifications_mentioned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_um_notifications_mentioned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_um_notifications_mentioned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_need_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_um_notifications_subscribers_need_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_need_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_need_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmwp_um_notifications_subscribers_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmwp_um_notifications_subscribers_notified'"
