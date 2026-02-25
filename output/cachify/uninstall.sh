#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cachify'

# Delete Transients
wp transient delete 'cachify_cache_size'

# Clear Cron Jobs
wp cron event delete 'hdd_cache_cron'

