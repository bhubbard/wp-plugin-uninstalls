#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_easyarchives_options'

# Clear Cron Jobs
wp cron event delete 'wp_easyarchives_cache_update'

