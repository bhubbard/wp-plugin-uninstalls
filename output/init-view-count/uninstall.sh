#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'init_plugin_suite_view_count_enable_widget'
wp option delete 'init_plugin_suite_view_count_post_types'
wp option delete 'init_plugin_suite_view_count_auto_insert'
wp option delete 'init_plugin_suite_view_count_enable_day'
wp option delete 'init_plugin_suite_view_count_enable_week'
wp option delete 'init_plugin_suite_view_count_enable_month'
wp option delete 'init_plugin_suite_view_count_disable_trending'
wp option delete 'init_plugin_suite_view_count_batch'
wp option delete 'init_plugin_suite_view_count_strict_ip_check'
wp option delete 'init_plugin_suite_view_count_delay'
wp option delete 'init_plugin_suite_view_count_scroll_percent'
wp option delete 'init_plugin_suite_view_count_scroll_enabled'
wp option delete 'init_plugin_suite_view_count_storage'
wp option delete 'init_plugin_suite_view_count_disable_style'

# Delete Transients
wp transient delete 'init_plugin_suite_view_count_trending'
wp transient delete 'trending_last_calculation'
wp transient delete 'init_plugin_suite_view_count_trending_debug'
wp transient delete 'hot_topics_24h'
wp transient delete 'init_plugin_suite_view_count_site_traffic_shape'
wp transient delete 'init_plugin_suite_view_count_site_traffic_shape_learned'

# Clear Cron Jobs
wp cron event delete 'init_plugin_suite_view_count_reset_counts'
wp cron event delete 'init_plugin_suite_view_count_cron_update_trending'

