#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpwc_comment_rules'
wp option delete 'lpwc_show_comment_rules'
wp option delete 'lpwc_info'
wp option delete 'lpwc_display_feature_notification'
wp option delete 'lpwc'
wp option delete 'lpwc_disable_flood_protection'
wp option delete 'lpwc_allow_duplicate_comments'
wp option delete 'lpwc_global_max_comments'
wp option delete 'rules'
wp option delete 'lpwc_user_reviewed'
wp option delete 'lpwc_nag_dismissed_time'
wp option delete 'lpwc_show_notification'
wp option delete 'lpwc_install_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lpwc_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lpwc_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lpwc_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lpwc_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_comments_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_comments_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_comments_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_comments_limit'"
