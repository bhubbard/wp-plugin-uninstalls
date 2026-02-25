#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whereabouts_swarm_current_location'
wp option delete 'whereabouts_swarm_settings'
wp option delete 'whereabouts_swarm_auth_code'

# Clear Cron Jobs
wp cron event delete 'whereabouts_swarm_fetch_location'

