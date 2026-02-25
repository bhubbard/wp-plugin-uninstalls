#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dup_db_reset_pro_reset_count'
wp option delete 'dup_db_reset_pro_review_status'
wp option delete 'dup_db_reset_pro_review_snooze_until'
wp option delete 'dup_db_reset_pro_review_snooze_reset_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag'"
