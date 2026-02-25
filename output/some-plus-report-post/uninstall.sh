#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sprp_version'
wp option delete 'sprp_settings'

# Delete Transients
wp transient delete 'sprp_stats'

# Clear Cron Jobs
wp cron event delete 'sprp_cleanup'

