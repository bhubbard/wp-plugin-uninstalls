#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ml_options'
wp option delete 'ml_contents'
wp option delete 'ml_widget'

# Clear Cron Jobs
wp cron event delete 'ml_update_event'

