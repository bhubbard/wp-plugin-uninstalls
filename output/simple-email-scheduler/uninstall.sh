#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simesc_saved_recipients'

# Clear Cron Jobs
wp cron event delete 'simesc_monthly_email_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_last_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_day_of_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_day_of_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_day_of_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_day_of_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simesc_send_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simesc_send_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simesc_send_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simesc_send_time'"
