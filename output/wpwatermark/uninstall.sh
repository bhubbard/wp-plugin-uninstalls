#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpwatermark_options'

# Clear Cron Jobs
wp cron event delete 'wpwatermark_clean_logs'

