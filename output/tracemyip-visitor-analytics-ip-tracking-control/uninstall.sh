#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmip_lc_first_activation'
wp option delete 'tmip_lc_enable_unfiltered_stats'
wp option delete 'tmip_lc_enable_daily_chart'
wp option delete 'tmip_lc_enable_top_posts'
wp option delete 'tmip_lc_enable_top_pages'
wp option delete 'tmip_lc_enable_recent_views'
wp option delete 'tmip_lc_date_format'
wp option delete 'tmip_lc_time_format'
wp option delete 'tmip_lc_charts_retention'
wp option delete 'tmip_lc_recent_views_minutes'
wp option delete 'tmip_lc_chart_display_mode'
wp option delete 'tmip_lc_chart_series_display'
wp option delete 'tmip_lc_storage_method'
wp option delete 'tmip_lc_top_posts_count'
wp option delete 'tmip_lc_top_pages_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_enable_cpt_dashboard_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_top_count_%'"
wp option delete 'tmip_lc_enable_active_ips'
wp option delete 'tmip_lc_active_ips_limit'
wp option delete 'tmip_lc_ip_lookup_service'
wp option delete 'tmip_lc_active_ips_timeframe'
wp option delete 'tmip_lc_dashboard_stats_order'
wp option delete 'tmip_lc_column_position'
wp option delete 'tmip_lc_timezone_setting'
wp option delete 'tmip_lc_custom_timezone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_%'"
wp option delete 'tmip_lc_stats_retention'
wp option delete 'tmip_lc_ip_data_retention'
wp option delete 'tmip_lc_enable_posts_column'
wp option delete 'tmip_lc_enable_pages_column'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmip_lc_enable_cpt_column_%'"
wp option delete 'tmip_lc_count_interval'
wp option delete 'tmip_lc_count_interval_unit'
wp option delete 'tmip_lc_exclude_groups'
wp option delete 'tmip_lc_exclude_ips'
wp option delete 'tmip_lc_total_logged_views'

# Delete Transients
wp transient delete 'tmip_admin_notice'
wp transient delete 'tmip_show_activation_cache_notice'
wp transient delete 'tmip_show_upgrade_cache_notice'

# Clear Cron Jobs
wp cron event delete 'tmip_lc_daily_cleanup'
wp cron event delete 'tmip_lc_hourly_aggregate'

