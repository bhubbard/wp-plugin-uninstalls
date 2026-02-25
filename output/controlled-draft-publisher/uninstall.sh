#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdp_log_autoload_fixed'
wp option delete 'cdp_log'
wp option delete 'cdp_interval'
wp option delete 'cdp_post_types'
wp option delete 'cdp_logging'
wp option delete 'cdp_posts_per_run'
wp option delete 'cdp_categories'

# Delete Transients
wp transient delete 'cdp_last_publish_error'

# Clear Cron Jobs
wp cron event delete 'cdp_publish_event'

