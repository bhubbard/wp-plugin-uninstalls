#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surveyx_settings'
wp option delete 'surveyx_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_surveyx_summary_%' OR option_name LIKE '_site_transient_surveyx_summary_%'"
wp transient delete 'surveyx_templates'

# Clear Cron Jobs
wp cron event delete 'surveyx_process_sessions_hourly'

