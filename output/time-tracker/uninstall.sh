#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'time_tracker_sql_result'
wp option delete 'time_tracker_admin_notices'
wp option delete 'time_tracker_install_time'
wp option delete 'time_tracker_categories'
wp option delete 'time_tracker_style'
wp option delete 'time_tracker_version'
wp option delete 'time-tracker-sql-result'
wp option delete 'time_tracker-sql-result'
wp option delete 'time-tracker'

# Clear Cron Jobs
wp cron event delete 'tt_recurring_task_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
