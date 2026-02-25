#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cus_scheduled_homepage_changes'
wp option delete 'tsu_options'

# Clear Cron Jobs
wp cron event delete 'cus_check_overdue_posts'
wp cron event delete 'cus_publish_post'
wp cron event delete 'cus_change_homepage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cus_sc_publish_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cus_sc_publish_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cus_sc_publish_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cus_sc_publish_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cus_sc_publish_pubdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cus_sc_publish_pubdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cus_sc_publish_pubdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cus_sc_publish_pubdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_pubdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_pubdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_pubdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_pubdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keep_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keep_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keep_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keep_dates'"
