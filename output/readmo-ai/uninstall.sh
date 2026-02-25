#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'readmo_ai_settings'
wp option delete 'readmo_ai_auto_insert'

# Delete Transients
wp transient delete 'readmo_ai_client_id'
wp transient delete 'readmo_ai_path_info'

# Clear Cron Jobs
wp cron event delete 'readmo_ai_daily_cleanup'

