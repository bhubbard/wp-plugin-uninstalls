#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cnbm_version'
wp option delete 'cnbm_activated_time'
wp option delete 'cnbm_db_version'
wp option delete 'cnbm_settings'
wp option delete 'cnbm_weekly_report_settings'
wp option delete 'cnbm_last_newsletter_send'
wp option delete 'cnbm_template_type'
wp option delete 'cnbm_subscriber_keys_migrated'
wp option delete 'cnbm_last_newsletter_send_timestamp'

# Delete Transients
wp transient delete 'cnbm_activation_error'

# Clear Cron Jobs
wp cron event delete 'cnbm_send_newsletter'
wp cron event delete 'cnbm_process_email_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cnbm_dismissed_rating_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cnbm_dismissed_rating_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cnbm_dismissed_rating_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cnbm_dismissed_rating_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cnbm_smtp_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cnbm_smtp_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cnbm_smtp_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cnbm_smtp_notice_dismissed'"
