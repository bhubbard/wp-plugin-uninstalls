#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification_master_version'
wp option delete 'notification_master_instagram_tokens'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'ntfm_delete_logs'
wp cron event delete 'ntfm_notifications_delete_logs'
wp cron event delete 'ntfm_cleanup_failed_subscriptions'
wp cron event delete 'notification_master_refresh_instagram_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'connections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'connections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'connections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'connections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntfm_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntfm_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntfm_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntfm_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntfm_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntfm_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntfm_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntfm_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntfm_review_notice_first_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntfm_review_notice_first_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntfm_review_notice_first_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntfm_review_notice_first_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trigger'"
