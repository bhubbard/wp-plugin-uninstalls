#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_views_counter_settings_general'
wp option delete 'post_views_counter_settings_display'
wp option delete 'post_views_counter_version'
wp option delete 'post_views_counter_activated_blogs'

# Delete Transients
wp transient delete 'post_views_counter_ip_cache'

# Clear Cron Jobs
wp cron event delete 'pvc_reset_counts'
wp cron event delete 'pvc_flush_cached_counts'

