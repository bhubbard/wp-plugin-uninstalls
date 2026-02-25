#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'check_new_msg_and_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notice_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notice_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notice_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notice_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_email_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_email_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_email_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_email_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emails'"
