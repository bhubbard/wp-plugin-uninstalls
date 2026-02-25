#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsblc_options'
wp option delete 'blc_settings'
wp option delete 'wpmudev_apikey'
wp option delete 'allowedthemes'
wp option delete 'blc_activation_enabled'
wp option delete 'wpmudev_blc_last_db_upgrade'

# Clear Cron Jobs
wp cron event delete 'blc_schedule_scan'
wp cron event delete 'blc_cron_check_links'
wp cron event delete 'blc_cron_email_notifications'
wp cron event delete 'blc_cron_database_maintenance'
wp cron event delete 'blc_corn_clear_log_file'
wp cron event delete 'blc_cron_check_news'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
