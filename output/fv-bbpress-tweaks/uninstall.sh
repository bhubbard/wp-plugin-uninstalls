#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%limit_guest_access'"
wp option delete 'fv_bbpress_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%search_before_post'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notify_by_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_display'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notify'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics_registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies_registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%previously_approved'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%put_in_front_end_moderation_links'"
wp option delete 'bbpressmoderationnotify_by_default'
wp option delete '_bbp_root_slug'
wp option delete 'fv_bbpress_rewrite_rules_flush'
wp option delete 'rewrite_rules'
wp option delete 'fv_bbpress_tweaks'
wp option delete '_bbp_default_role'
wp option delete 'bbpressmoderationsearch_before_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_bbp_anonymous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_bbp_anonymous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_bbp_anonymous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_bbp_anonymous_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_bbp_solved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_bbp_solved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_bbp_solved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_bbp_solved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_bbpress_reply_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_bbpress_reply_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_bbpress_reply_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_bbpress_reply_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_user_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_user_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_user_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_user_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_user_imported_p'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_user_imported_p'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_user_imported_p'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_user_imported_p'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'account_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fv%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fv%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fv%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fv%'"
