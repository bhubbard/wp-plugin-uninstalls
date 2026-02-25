#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpmc_bp_messaging_control'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpmc_user_email_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpmc_user_email_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpmc_user_email_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpmc_user_email_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpmc_mentions_user_email_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpmc_mentions_user_email_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpmc_mentions_user_email_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpmc_mentions_user_email_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpmc_replied_user_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpmc_replied_user_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpmc_replied_user_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpmc_replied_user_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpmc_user_have_mentioned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpmc_user_have_mentioned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpmc_user_have_mentioned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpmc_user_have_mentioned'"
