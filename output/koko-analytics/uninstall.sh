#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'koko_analytics_settings'
wp option delete 'koko_analytics_referrers_v2'
wp option delete 'koko_analytics_version'
wp option delete 'koko_analytics_realtime_pageview_count'
wp option delete 'koko_analytics_last_aggregation_at'
wp option delete 'koko_analytics_use_custom_endpoint'
wp option delete 'koko_analytics_jetpack_import_params'
wp option delete 'koko_analytics_pro_version'

# Delete Transients
wp transient delete 'koko_analytics_remote_posts'

# Clear Cron Jobs
wp cron event delete 'koko_analytics_aggregate_stats'
wp cron event delete 'koko_analytics_prune_data'
wp cron event delete 'koko_analytics_rotate_fingerprint_seed'
wp cron event delete 'koko_analytics_test_custom_endpoint'

