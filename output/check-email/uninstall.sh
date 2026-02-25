#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'check-email-smtp-options'
wp option delete 'check_email_smtp_status'
wp option delete 'check-email-email-encode-options'
wp option delete 'checkmail_admin_fcm_token'
wp option delete 'check-email-email-notify-options'
wp option delete 'check-email-log-global-smtp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'check-email-log-core'
wp option delete 'check-email-rate-time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'check_email_spam_score_%'"
wp option delete 'check_email_e_filter_priority'
wp option delete 'check-email-log-db'

# Clear Cron Jobs
wp cron event delete 'check_mail_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
