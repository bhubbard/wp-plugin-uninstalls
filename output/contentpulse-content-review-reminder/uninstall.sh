#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contentpulse_review_frequency'
wp option delete 'contentpulse_email_notifications'
wp option delete 'contentpulse_notification_email'
wp option delete 'contentpulse_version'

# Clear Cron Jobs
wp cron event delete 'contentpulse_daily_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentpulse_last_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentpulse_last_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentpulse_last_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentpulse_last_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contentpulse_next_review_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contentpulse_next_review_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contentpulse_next_review_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contentpulse_next_review_date'"
