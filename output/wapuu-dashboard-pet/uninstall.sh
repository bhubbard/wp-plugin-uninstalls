#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wapapostnag'
wp option delete 'wapacomnag'
wp option delete 'wapaloc'
wp option delete 'wapaemail'
wp option delete 'dismissed_update_core'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'WDPet_Daily'
wp cron event delete 'WDPet_Weekly'

