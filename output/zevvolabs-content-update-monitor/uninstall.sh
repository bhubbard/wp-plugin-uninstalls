#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zcum_analytics_table_checked'
wp option delete 'zcum_settings'
wp option delete 'zcum_version'

# Delete Transients
wp transient delete 'zcum_dashboard_widget_data'

# Clear Cron Jobs
wp cron event delete 'zcum_daily_age_update'
wp cron event delete 'zcum_cleanup_analytics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_age_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_age_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_age_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_age_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_age_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_age_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_age_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_age_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_total_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_total_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_total_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_total_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_total_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_total_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_total_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_total_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_avg_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_avg_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_avg_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_avg_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcum_engagement_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcum_engagement_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcum_engagement_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcum_engagement_score'"
