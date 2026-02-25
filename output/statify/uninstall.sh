#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'statify'
wp option delete 'disallowed_keys'

# Delete Transients
wp transient delete 'statify_data'

# Clear Cron Jobs
wp cron event delete 'statify_cleanup'

