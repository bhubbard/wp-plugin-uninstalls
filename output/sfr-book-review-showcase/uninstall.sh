#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfrbrs_delete_data_on_uninstall'
wp option delete 'sfrbrs_activation_date'
wp option delete 'sfrbrs_schema_version'
wp option delete 'sfrbrs_settings'
wp option delete 'sfrbrs_review_view_stats'
wp option delete 'sfrbrs_review_click_stats'

# Clear Cron Jobs
wp cron event delete 'sfrbrs_stats_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_permanent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfrbrs_pro_notice_dismissed_until'"
