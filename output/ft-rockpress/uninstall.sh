#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"
wp option delete 'default_post_edit_rows'
wp option delete 'rockpress_import'
wp option delete 'rockpress_last_import'
wp option delete 'rockpress_import_in_progress'
wp option delete 'rockpress_licenses'
wp option delete 'rockpress_rock'
wp option delete 'rockpress_settings'
wp option delete 'rockpress_current_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_active'"
wp option delete 'rockpress_license_data'

# Delete Transients
wp transient delete 'rockpress-addons'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'rockpress_maintenance'
wp cron event delete 'rockpress_transient_cache_cleanup'

