#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anycomment-generic'
wp option delete 'anycomment-social'
wp option delete 'anycomment_migration'

# Clear Cron Jobs
wp cron event delete 'anycomment_email_queue_send_cron'
wp cron event delete 'anycomment_service_sync_cron'
wp cron event delete 'anycomment_tools_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anycomment_social_original_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anycomment_social_original_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anycomment_social_original_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anycomment_social_original_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anycomment_social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anycomment_social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anycomment_social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anycomment_social'"
