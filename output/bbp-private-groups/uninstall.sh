#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpg_settingsf'
wp option delete 'rpg_settingsg'
wp option delete 'rpg_groups'
wp option delete 'rpg_roles'
wp option delete 'rpg_topic_permissions'
wp option delete 'rpg_disable_groups'
wp option delete 'rew'
wp option delete '_bbp_forums_per_page'
wp option delete 'rpg_warning'
wp option delete '_bbp_enable_subscriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'private_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'private_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'private_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'private_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_private_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_private_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_private_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_private_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_topic_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_topic_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_total_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_private_group_nonloggedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_private_group_nonloggedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_private_group_nonloggedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_private_group_nonloggedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_mar_read_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_mar_read_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_mar_read_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_mar_read_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_reply_id'"
