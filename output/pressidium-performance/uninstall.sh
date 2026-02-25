#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pressidium_performance_activated'
wp option delete 'pressidium_performance_settings'
wp option delete 'pressidium_performance_table_versions'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'pressidium_performance_clean_up_cron_job'

