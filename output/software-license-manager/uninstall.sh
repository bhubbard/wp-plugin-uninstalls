#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slm_plugin_options'
wp option delete 'wp_lic_mgr_db_version'

# Clear Cron Jobs
wp cron event delete 'slm_daily_cron_event'

