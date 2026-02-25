#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iaud_days_active'
wp option delete 'iaud_reassign_user'
wp option delete 'iaud_warning_days_first'
wp option delete 'iaud_warning_days_final'
wp option delete 'iaud_email_subject_first'
wp option delete 'iaud_email_message_first'
wp option delete 'iaud_email_subject_final'
wp option delete 'iaud_email_message_final'
wp option delete 'iaud_disable_emails'

# Clear Cron Jobs
wp cron event delete 'iaud_inactive_user_deletion_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iaud_first_warning_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iaud_first_warning_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iaud_first_warning_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iaud_first_warning_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iaud_final_warning_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iaud_final_warning_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iaud_final_warning_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iaud_final_warning_sent'"
