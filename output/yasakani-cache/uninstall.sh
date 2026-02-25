#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yasakani_option'

# Delete Transients
wp transient delete 'yasakani_statistics'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yasakani_statistics_%' OR option_name LIKE '_site_transient_yasakani_statistics_%'"
wp transient delete 'yasakani_notice'

# Clear Cron Jobs
wp cron event delete 'cron_yasakani_bruteforce_expired'

