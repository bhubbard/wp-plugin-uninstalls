#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'adbc_plugin_automation'
wp option delete 'aDBc_settings'
wp option delete 'aDBc_clean_schedule'
wp option delete 'aDBc_optimize_schedule'
wp option delete 'aDBc_security_folder_code'
wp option delete 'adbc_plugin_settings'

# Delete Transients
wp transient delete 'adbc_plugin_tables_to_repair'

# Clear Cron Jobs
wp cron event delete 'adbc_cron_analytics'
wp cron event delete 'adbc_cron_automation'

