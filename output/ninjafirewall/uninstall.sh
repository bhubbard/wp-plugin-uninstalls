#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registration'
wp option delete 'nscan_options'
wp option delete 'nfw_install'
wp option delete 'nfw_options'
wp option delete 'nfw_rules'
wp option delete 'nfw_tmp'
wp option delete 'nfw_checked'

# Delete Transients
wp transient delete 'nfw_fullwaf'
wp transient delete 'nfw_dailyreport'
wp transient delete 'nfw_fetchsecupdates'
wp transient delete 'nfw_version_update'
wp transient delete 'nfw_db_check'

# Clear Cron Jobs
wp cron event delete 'nfscanevent'
wp cron event delete 'nfwgccron'
wp cron event delete 'nfsecupdates'
wp cron event delete 'nfdailyreport'

