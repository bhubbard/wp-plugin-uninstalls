#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avalex_api_key'
wp option delete 'avalex_valid_api_key'

# Clear Cron Jobs
wp cron event delete 'avalex_cron_event'
wp cron event delete 'avalex_update_dse_cron_event'

