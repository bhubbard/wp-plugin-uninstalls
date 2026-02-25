#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'transient_clean_options'
wp option delete 'transient_clean_expired'
wp option delete 'transient_clean_all'

# Clear Cron Jobs
wp cron event delete 'housekeep_transients'

