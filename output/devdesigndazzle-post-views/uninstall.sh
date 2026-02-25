#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dddPostViews_post_views_settings'
wp option delete 'dddPostViews_post_views_version'

# Clear Cron Jobs
wp cron event delete 'dddPostViews_monthly_aggregation_event'

