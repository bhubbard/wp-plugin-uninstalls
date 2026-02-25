#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polarsteps_username'
wp option delete 'polarsteps_trip_id'
wp option delete 'polarsteps_user_id'
wp option delete 'polarsteps_db_version'
wp option delete 'polarsteps_trip_slug'
wp option delete 'polarsteps_trip_legacy_id'

# Clear Cron Jobs
wp cron event delete 'polarsteps_update_steps'

