#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goodrds_reading_json'
wp option delete 'goodrds_read_json'
wp option delete 'goodrds_options'

# Delete Transients
wp transient delete 'goodrds_getLimit'

# Clear Cron Jobs
wp cron event delete 'goodrds_cronjob'

