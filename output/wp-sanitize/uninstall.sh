#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsanitize'

# Clear Cron Jobs
wp cron event delete 'wps_optimize_database'

