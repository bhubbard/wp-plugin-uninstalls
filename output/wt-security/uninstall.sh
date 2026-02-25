#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtsec_api_key'
wp option delete 'wtsec_am_installed_file'
wp option delete 'wtsec_waf_installed_file'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtsec_%'"
wp option delete 'wtotem_api_key'
wp option delete 'wtotem_am_installed_file'
wp option delete 'wtotem_waf_installed_file'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtotem_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'webtotem_daily_cron'
wp cron event delete 'wtotem_step_init_cron'

