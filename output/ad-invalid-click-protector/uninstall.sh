#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicp_settings_options'
wp option delete 'aicp_donate_notice'
wp option delete 'aicp_db_ver'

# Clear Cron Jobs
wp cron event delete 'aicp_hourly_cleanup'

