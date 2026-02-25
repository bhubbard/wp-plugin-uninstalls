#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wvrbbp_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'wvrbbp_add_cap_editor_once'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_best_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_best_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_best_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_best_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_best_topic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_best_topic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_best_topic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_best_topic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wvrbbp_mute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wvrbbp_mute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wvrbbp_mute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wvrbbp_mute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wvrbbp_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wvrbbp_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wvrbbp_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wvrbbp_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_is_private'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wvrbbp_hide_user_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wvrbbp_hide_user_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wvrbbp_hide_user_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wvrbbp_hide_user_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_svc_viewcounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_svc_viewcounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_svc_viewcounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_svc_viewcounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvrx_bbpe_viewcounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvrx_bbpe_viewcounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvrx_bbpe_viewcounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvrx_bbpe_viewcounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wvrbbp_viewcounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wvrbbp_viewcounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wvrbbp_viewcounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wvrbbp_viewcounts'"
