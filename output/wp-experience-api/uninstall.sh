#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpxapi_settings'
wp option delete 'json_api_base'
wp option delete 'wpxapi_network_settings'

# Clear Cron Jobs
wp cron event delete 'wpxapi_run_queue'

