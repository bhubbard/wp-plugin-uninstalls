#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mainwp_fluentsupport_site_url'
wp option delete 'mainwp_fluentsupport_api_username'
wp option delete 'mainwp_fluentsupport_api_password'
wp option delete 'mainwp_fluentsupport_sync_log'
wp option delete 'mainwp_fluentsupport_last_sync'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'mainwp_fluentsupport_version'

# Clear Cron Jobs
wp cron event delete 'mainwp_fluentsupport_sync_tickets_cron'

