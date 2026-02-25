#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ggpush_options'

# Delete Transients
wp transient delete 'ggpush_publish_post_id'

# Clear Cron Jobs
wp cron event delete 'ggpush_run_baidu_cron'
wp cron event delete 'ggpush_run_baidu_fast_cron'
wp cron event delete 'ggpush_run_bing_cron'
wp cron event delete 'ggpush_run_indexnow_cron'

