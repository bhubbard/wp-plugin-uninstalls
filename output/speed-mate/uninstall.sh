#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speed_mate_caching_enable_cache'
wp option delete 'speed_mate_caching_cache_duration'
wp option delete 'speed_mate_caching_enable_static_caching'
wp option delete 'speed_mate_asset_optimization_enable_minification'
wp option delete 'speed_mate_asset_optimization_enable_html_minification'
wp option delete 'speed_mate_asset_optimization_enable_image_lazy_loading'
wp option delete 'speed_mate_asset_optimization_exclusions'
wp option delete 'speed_mate_asset_optimization_combine_css'
wp option delete 'speed_mate_db_optimization_revisions_cleanup_enable'
wp option delete 'speed_mate_db_optimization_revisions_cleanup_schedule'
wp option delete 'speed_mate_db_optimization_revisions_cleanup_keep_count'
wp option delete 'speed_mate_db_optimization_trash_spam_cleanup_enable'
wp option delete 'speed_mate_db_optimization_trash_spam_cleanup_schedule'
wp option delete 'speed_mate_pa_google_api_key'
wp option delete 'speed_mate_caching_enable_header_caching'

# Clear Cron Jobs
wp cron event delete 'speed_mate_revisions_cleanup_cron'
wp cron event delete 'speed_mate_trash_spam_cleanup_cron'

