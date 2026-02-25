#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynamic_surveys_activated'
wp option delete 'dynamic_surveys_deactivated'

# Delete Transients
wp transient delete 'dynamic_surveys_cache'

# Clear Cron Jobs
wp cron event delete 'dynamic_surveys_daily_cleanup'

