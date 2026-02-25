#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preeco_widgets_timestamp'
wp option delete 'preeco_widgets_caching_enabled'

# Clear Cron Jobs
wp cron event delete 'preeco_widgets_cache_all'

