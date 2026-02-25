#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_feedback_roadmap_general_settings'

# Delete Transients
wp transient delete 'roadmap_import_success'

# Clear Cron Jobs
wp cron event delete 'rmpf_process_scheduled_status_changes'

