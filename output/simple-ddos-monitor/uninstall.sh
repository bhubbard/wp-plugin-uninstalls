#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddos_monitor_urls'
wp option delete 'ddos_monitor_enable_email'
wp option delete 'ddos_monitor_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ddos_monitor_status_%' OR option_name LIKE '_site_transient_ddos_monitor_status_%'"
wp transient delete 'ddos_monitor_background_running'

# Clear Cron Jobs
wp cron event delete 'ddos_monitor_hook'

