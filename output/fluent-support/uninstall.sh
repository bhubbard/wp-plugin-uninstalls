#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fluent_last_m_run'
wp option delete '_fs_migrate_awesome_support'
wp option delete '_fs_migrate_freshdesk'
wp option delete '_fs_migrate_helpscout'
wp option delete '_fs_migrate_js_helpdesk'
wp option delete '_fs_migrate_support_candy'
wp option delete '_fs_migrate_zendesk'
wp option delete 'siteUrl'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fluent_support_hourly_tasks'
wp cron event delete 'fluent_support_daily_tasks'
wp cron event delete 'fluent_support_weekly_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
