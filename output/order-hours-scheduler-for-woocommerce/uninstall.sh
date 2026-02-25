#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'zhours_cache_clear_open'
wp cron event delete 'zhours_cache_clear_close'

