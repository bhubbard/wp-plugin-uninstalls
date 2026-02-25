#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bat_satisfaction_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bat_satisfaction_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bat_satisfaction_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bat_satisfaction_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_reply_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_bat_score-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_bat_score-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_bat_score-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bat_score-%'"
