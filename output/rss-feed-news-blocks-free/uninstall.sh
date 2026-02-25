#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfnb_favicons'
wp option delete 'wp_rss_cache'

# Clear Cron Jobs
wp cron event delete 'rfnb_cron'

