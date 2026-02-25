#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdprconsentmanager_api_status'
wp option delete 'gdprconsentmanager_schedular_options'
wp option delete 'gdprconsentmanager_options'
wp option delete ' gdprconsentmanager_cookie_widget_options'
wp option delete 'gdprconsentmanager_website_connections_options'
wp option delete 'gdprconsentmanager_webupdate_options'

# Clear Cron Jobs
wp cron event delete 'trigger_per_day'

