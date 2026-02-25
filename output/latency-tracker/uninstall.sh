#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_latencytracker_settings'

# Clear Cron Jobs
wp cron event delete 'lt_clear_max'

