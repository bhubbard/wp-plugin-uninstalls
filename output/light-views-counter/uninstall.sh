#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lightvc_supported_post_types'
wp option delete 'lightvc_pvc_import_state'
wp option delete 'lightvc_scroll_threshold'
wp option delete 'lightvc_time_window'
wp option delete 'lightvc_cache_duration'
wp option delete 'lightvc_enable_caching'
wp option delete 'lightvc_fast_mode'
wp option delete 'lightvc_show_views_on_content'
wp option delete 'lightvc_load_css_in_header'
wp option delete 'lightvc_enable_get_endpoint'
wp option delete 'lightvc_query_method'
wp option delete 'lightvc_exclude_bots'
wp option delete 'lightvc_db_version'

# Clear Cron Jobs
wp cron event delete 'lightvc_cache_warmup'

