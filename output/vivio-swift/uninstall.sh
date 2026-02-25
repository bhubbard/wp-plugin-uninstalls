#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vivio_swift_configs'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'vivio_swift_schedule_preload_cache'

