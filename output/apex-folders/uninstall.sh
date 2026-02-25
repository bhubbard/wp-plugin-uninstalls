#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apex_folders_needs_migration'
wp option delete 'apex_folders_show_debug_tools'
wp option delete 'apex_folders_remove_all_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apex_folder_for_%' OR option_name LIKE '_site_transient_apex_folder_for_%'"
wp transient delete 'apex_folder_counts'

# Clear Cron Jobs
wp cron event delete 'apex_folders_update_counts_event'

