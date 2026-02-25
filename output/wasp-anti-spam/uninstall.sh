#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WP_EX_FONTS_LIST'
wp option delete 'ebk_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_email'"

# Clear Cron Jobs
wp cron event delete 'ebk_prune_spam_comments_hook'
wp cron event delete 'ebk_prune_unverifyed_users'
wp cron event delete 'ebk_prune_unsent_forms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebk_comment_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebk_comment_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebk_comment_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebk_comment_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebk_email_activation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebk_email_activation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebk_email_activation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebk_email_activation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebk_email_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebk_email_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebk_email_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebk_email_activation'"
