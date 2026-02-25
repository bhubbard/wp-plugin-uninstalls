#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-sudoku-data-count'
wp option delete 'wp-sudoku-rating-counts'

# Clear Cron Jobs
wp cron event delete 'wpsud_cron_event'

