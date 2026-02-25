#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'health_check_debug_mode'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'

