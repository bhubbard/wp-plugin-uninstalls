#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stellenanzeigen_jobs_city'
wp option delete 'stellenanzeigen_jobs_regions'
wp option delete 'stellenanzeigen_jobs_regions_coordinates'

# Clear Cron Jobs
wp cron event delete 'getJobLocationDataEvery__1day'

